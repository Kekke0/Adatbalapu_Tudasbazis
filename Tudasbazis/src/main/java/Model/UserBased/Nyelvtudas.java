package Model.UserBased;
public class Nyelvtudas {
    private String Szint;
    private String Nyelv;
    private String LektorID;
    public Nyelvtudas(String Lektorid,String szint, String nyelv) {
        this.LektorID= Lektorid;
        Szint = szint;
        Nyelv = nyelv;
    }

    public String getLektorID() {
        return LektorID;
    }

    public void setLektorID(String lektorID) {
        LektorID = lektorID;
    }

    public String getSzint() {
        return Szint;
    }

    public void setSzint(String szint) {
        Szint = szint;
    }

    public String getNyelv() {
        return Nyelv;
    }

    public void setNyelv(String nyelv) {
        Nyelv = nyelv;
    }

    @Override
    public String toString() {
        return "{\n" +
                "\"LektorID\":\"" + LektorID + "\",\n" +
                "\"Nyelv\":\"" + Nyelv + "\",\n" +
                "\"Szint\":\"" + Szint + "\"\n" +
                '}';
    }

}
