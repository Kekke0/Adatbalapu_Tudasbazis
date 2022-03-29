package CikkOriented;

public class Cikk {
    private String ID, Cim, Tartalom, Allapot, Nyelv, LektoralasDatuma;
    private String Kategoria, Lektoralta, Szerzo;

    public Cikk(String ID) {
        this.ID = ID;
    }

    public Cikk(String ID, String cim, String tartalom, String allapot, String nyelv) {
        this.ID = ID;
        Cim = cim;
        Tartalom = tartalom;
        Allapot = allapot;
        Nyelv = nyelv;
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
}
