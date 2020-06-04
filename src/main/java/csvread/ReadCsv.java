package csvread;

import application.*;

import java.io.BufferedReader;
import java.io.FileReader;

/**
 * 该类主要用于从csv文件中读取到需要传送的信息，然后保存到一个地方
 *      1.获取的信息包括：104地址、数据库点名、数据类型、是否需要变比；
 *          a、转化以后的信息应该是包括：或者直接用一个对象来进行存储；
 *
 */
public class ReadCsv {
    private static Information YXinfo;
    private static Information YCinfo;
    private static Information YKinfo;
    private static Information YTinfo;

    public void readCsvData(String name) throws Exception {

        BufferedReader buffer = new BufferedReader(new FileReader(name));
        buffer.readLine();
        System.out.println("读取csv文件成功！");

        String line;
        while (!(line = buffer.readLine()).equals("")){
            String[] data = line.split(",");
            dealCsvData(data);
        }
        buffer.close();
    }

    public void dealCsvData(String[] data){
        Integer address = Integer.parseInt(data[0]);
        String tagname = data[1];
        String datatype = data[2];
        String info = data[4];

        if ("YC".equals(info)) {
            if (YCinfo != null) {
                setvalue(YCinfo, tagname, datatype, address);
            } else {
                YCinfo = new YcInfo();
                setvalue(YCinfo, tagname, datatype, address);
            }
        } else if ("YX".equals(info)) {
            if (YXinfo != null) {
                setvalue(YXinfo, tagname, datatype, address);
            } else {
                YXinfo = new YxInfo();
                setvalue(YXinfo, tagname, datatype, address);
            }
        } else if ("YK".equals(info)) {
            if (YKinfo != null) {
                setvalue(YKinfo, tagname, datatype, address);
            } else {
                YKinfo = new YkInfo();
                setvalue(YKinfo, tagname, datatype, address);
            }
        } else if ("YT".equals(info)) {
            if (YTinfo != null) {
                setvalue(YTinfo, tagname, datatype, address);
            } else {
                YTinfo = new Ytinfo();
                setvalue(YTinfo, tagname, datatype, address);
            }
        }
    }

    //没找到实现实例化不同对象的的好方法
    public void judgeinfo(Information information,String name,String type,Integer address){
        if (information != null){
            setvalue(information,name,type,address);
        }else{
            information = new YcInfo();
            setvalue(information,name,type,address);
        }
    }

    public void setvalue(Information information,String name,String type,Integer address){
        information.setDataNames(name);
        information.setDataTypes(type);
        information.setIecAddress(address);
    }

    public static Information getYXinfo() {
        return YXinfo;
    }

    public static Information getYCinfo() {
        return YCinfo;
    }

    public static Information getYKinfo() {
        return YKinfo;
    }

    public static Information getYTinfo() {
        return YTinfo;
    }
}