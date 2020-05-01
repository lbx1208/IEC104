package mypro;


import iec104.Apdu;
import iec104.Asdu;
import iec104.Init;
import iec104.util.ChangeUtils;

import javax.naming.ldap.InitialLdapContext;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class Mainpro {

    private static int receiveSeqNum = 0; //接收序号
    private static int sendSeqNum = 0; // 发送序号，每发送一个后需+1

    private static OutputStream outputStream = null;
    private static  InputStream inputStream = null;
    private static Socket socket = null;

    public static void main(String[] args) throws IOException {
        try {
            connect();
            //发送总召唤
            sendAllCall();

            while (true){
                Apdu apdu = new Apdu(new DataInputStream(inputStream));
                if(apdu.getApciType() == Apdu.ApciType.I_FORMAT){
                    dealImsg(apdu);
                }else if(apdu.getApciType() == Apdu.ApciType.S_FORMAT){
                    System.out.println("S报文：" + apdu.getApciType());
                }else {
                    dealUmsg(apdu);
                }
            }
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            outputStream.close();
            inputStream.close();
            socket.close();
        }
    }

    public static void dealImsg(Apdu apdu) throws IOException {
        Asdu asdu = apdu.getAsdu();
        if(asdu == null) {
            receiveSeqNum = apdu.getSendSeqNumber() + 1;
            String recStr = getHexnum(receiveSeqNum);
            outputStream.write(ChangeUtils.hexStringToBytes("68040100" + recStr));
        }else {
            System.out.println(asdu.toString());
            //是否需要将信息再写进数据库内？
        }
    }

    public static void dealUmsg(Apdu apdu) throws IOException {
        if (apdu.getApciType() == Apdu.ApciType.STARTDT_ACT) {
            outputStream.write(ChangeUtils.hexStringToBytes("68040B000000"));
            System.out.println("确认启动消息，U类型");
        }else if (apdu.getApciType() == Apdu.ApciType.STOPDT_ACT) {
            outputStream.write(ChangeUtils.hexStringToBytes("680423000000"));
            System.out.println("确认停止消息，U类型");
        }else if (apdu.getApciType() == Apdu.ApciType.TESTFR_ACT) {
            outputStream.write(ChangeUtils.hexStringToBytes("680483000000"));
            System.out.println("确认测试消息，U类型");
        }
    }

    public static  String getHexnum(int num){
        byte[] byteNum = new byte[2];
        byteNum[0] = (byte) (num << 1);
        byteNum[1] = (byte) (num >> 7);
        String numStr = ChangeUtils.toHexString(byteNum);
        return  numStr;
    }

    public static void connect() throws IOException {
        socket = new Socket("127.0.0.1",2404);
        outputStream = socket.getOutputStream();
        outputStream.write(ChangeUtils.hexStringToBytes("680407000000"));
        inputStream = socket.getInputStream();
        Init.initBusinessData();
    }

    public static void  sendAllCall(){
        Runnable allCallRunnable = new Runnable() {
            @Override
            public void run() {
                try {
                    String recStr = getHexnum(receiveSeqNum);
                    String sendStr = getHexnum(sendSeqNum);
                    sendSeqNum += 1;
                    outputStream.write(ChangeUtils.hexStringToBytes("680E"+sendStr+recStr+"64010600010000000014"));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        };
        ScheduledExecutorService service_A = Executors.newSingleThreadScheduledExecutor();
        service_A.scheduleAtFixedRate(allCallRunnable,2,500, TimeUnit.SECONDS);
    }
}
