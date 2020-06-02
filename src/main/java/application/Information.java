package application;

import java.util.ArrayList;
import java.util.HashMap;

public abstract class Information {
    private ArrayList dataNames;
    private ArrayList iecAddress;
    private ArrayList dataTypes;
    private HashMap<Integer,Integer> rtdbData;

    public abstract void sendmes();

    public Information(){
        dataNames = new ArrayList();
        iecAddress = new ArrayList();
        dataTypes = new ArrayList();
    }

    public ArrayList getDataNames() {
        return dataNames;
    }

    public void setDataNames(String dataName) {
        dataNames.add(dataName);
    }

    public ArrayList getIecAddress() {
        return iecAddress;
    }

    public void setIecAddress(Integer iecAddress) {
        this.iecAddress.add(iecAddress);
    }

    public ArrayList getDataTypes() {
        return dataTypes;
    }

    public void setDataTypes(String dataType) {
        dataTypes.add(dataType);
    }

    public HashMap<Integer, Integer> getRtdbData() {
        return rtdbData;
    }

    public void setRtdbData(HashMap<Integer, Integer> rtdbData) {
        System.out.println("暂时不可设置！");
    }
}
