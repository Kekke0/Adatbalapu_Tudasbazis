package CikkOriented;

import DAO.Find;

import java.util.List;

public class Cikk {
    private String ID, Cim, Tartalom, Allapot, Nyelv, LektoralasDatuma;
    private String Kategoria, Lektoralta, Szerzo;
    private static int CID=0;

    public void setKulcsszo(List<String> kulcsszo) {
        Kulcsszo = kulcsszo;
    }

    private List<String> Kulcsszo;

    public Cikk(String ID) {
        this.ID = ID;
    }

    public Cikk( String cim, String tartalom, String allapot, String nyelv,String kategoria,String szerzo, List<String> kulcsszo) {
        this.ID = "C"+getCID();
        Cim = cim;
        Tartalom = tartalom;
        Allapot = allapot;
        Nyelv = nyelv;
        Kulcsszo=kulcsszo;
        Kategoria=kategoria;
        Szerzo=szerzo;
    }

    public Cikk(String ID, String cim, String tartalom, String allapot, String nyelv, String szerzo, String kategoria, String lektoralta, String lektoralasDatuma) {
        this.ID = ID;
        Cim = cim;
        Tartalom = tartalom;
        Allapot = allapot;
        Nyelv = nyelv;
        LektoralasDatuma = lektoralasDatuma;
        Kategoria = kategoria;
        Lektoralta = lektoralta;
        Szerzo = szerzo;
    }

    public Cikk(String ID, String cim, String tartalom, String allapot, String nyelv, String kategoria,String szerzo, List<String> kulcsszo, String lektoralta, String lektoralasDatuma) {
        this.ID = ID;
        Cim = cim;
        Tartalom = tartalom;
        Allapot = allapot;
        Nyelv = nyelv;
        LektoralasDatuma = lektoralasDatuma;
        Kategoria = kategoria;
        Lektoralta = lektoralta;
        Szerzo = szerzo;
        Kulcsszo=kulcsszo;
    }


    public static int getCID() {
        try {
            CID= new Find().CikkCID()+1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return CID;
    }

    public void addkulcsszo(String a) {
        this.Kulcsszo.add(a);
    }

    public void deletekulcsszo(String a) {
        this.Kulcsszo.remove(a);
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getCim() {
        return Cim;
    }

    public void setCim(String cim) {
        Cim = cim;
    }

    public String getTartalom() {
        return Tartalom;
    }

    public void setTartalom(String tartalom) {
        Tartalom = tartalom;
    }

    public String getAllapot() {
        return Allapot;
    }

    public void setAllapot(String allapot) {
        Allapot = allapot;
    }

    public String getNyelv() {
        return Nyelv;
    }

    public void setNyelv(String nyelv) {
        Nyelv = nyelv;
    }

    public String getLektoralasDatuma() {
        return LektoralasDatuma;
    }

    public void setLektoralasDatuma(String lektoralasDatuma) {
        LektoralasDatuma = lektoralasDatuma;
    }

    public String getKategoria() {
        return Kategoria;
    }

    public void setKategoria(String kategoria) {
        Kategoria = kategoria;
    }

    public String getLektoralta() {
        return Lektoralta;
    }

    public void setLektoralta(String lektoralta) {
        Lektoralta = lektoralta;
    }

    public String getSzerzo() {
        return Szerzo;
    }

    public void setSzerzo(String szerzo) {
        Szerzo = szerzo;
    }

    @Override
    public String toString() {
        return "Cikk{" +
                "ID='" + ID + '\'' +
                "\n Cim='" + Cim + '\'' +
                "\n Tartalom='" + Tartalom + '\'' +
                "\n Allapot='" + Allapot + '\'' +
                "\n Nyelv='" + Nyelv + '\'' +
                "\n LektoralasDatuma='" + LektoralasDatuma + '\'' +
                "\n Kategoria='" + Kategoria + '\'' +
                "\n Lektoralta='" + Lektoralta + '\'' +
                "\n Szerzo='" + Szerzo + '\'' +
                '}';
    }

    public List<String> getKulcsszo() {
        return Kulcsszo;
    }
}
