package goldencon;

import com.rtdb.model.DoubleData;
import com.rtdb.model.Entity;
import com.rtdb.model.IntData;
import com.rtdb.service.impl.ServerImpl;
import com.rtdb.service.impl.ServerImplPool;
import com.rtdb.service.impl.SnapshotImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GoldenRtdb {
    private  int minconn = 2;
    private  int maxconn = 6;

    private static SnapshotImpl snapshot= null;
    private static ServerImpl serverImpl = null;

    //初始化池子对象
//    SeverPoolImpl pool = new ServerPoolImpl("127.0.0.1",6327,”sa”,"golden",2,4);
//    GoldenServerImpl goldenServer = new GoldenServerImpl();

    public void init() throws Exception {
        ServerImplPool serverpool = new ServerImplPool("127.0.0.1",6327,"sa","golden",minconn,maxconn);
        this.serverImpl = serverpool.getServerImpl();
        this.snapshot = new SnapshotImpl(serverImpl);
//        serverImpl.setTimeOut(2000);
    }

    public boolean isOpen() throws Exception {
        boolean is = serverImpl.isOpen();
        return is;
    }

    /**
     *
     * @param map
     * @return int
     * @throws Exception
     * 用于获取bool型数据
     */
    public HashMap<Integer[],Long[]> getboolorint(HashMap<Integer, String> map) throws Exception {
        int i = map.size();
        int j=0;
        String[] name = new String[i];
        Integer[] offset = new Integer[i];
        HashMap<Integer[],Long[]> valueoffset = new HashMap<Integer[], Long[]>();

        for (Map.Entry<Integer,String> mapvalue:map.entrySet()){
            name[j] = (String)mapvalue.getValue();
            offset[j] = mapvalue.getKey();
            j++;
        }

        List<IntData> value = snapshot.getIntSnapshots(name).getList();
        Long[] data = new Long[value.size()];
        int k = 0;
        for (IntData intData:value){
            data[k] = intData.getState();
            k++;
        }
        valueoffset.put(offset,data);
        return valueoffset;
    }

    /**
     *
     * @param name
     * @return
     * @throws Exception
     * 用于获取double型数据
     */
    public double getdouble(String[] name) throws Exception {
        Entity<DoubleData> entity = snapshot.getDoubleSnapshots(name);
        List<DoubleData> list = entity.getList();
        return list.get(0).getValue();
    }

    /**
     *
     * @param name
     * @return
     * @throws Exception
     *     用于获取整型数据
     */
/*    public long getint(String[] name) throws Exception {
        Entity<IntData> entity = snapshot.getIntSnapshots(name);
        List<IntData> list = entity.getList();
        return list.get(0).getState();
    }*/
}
