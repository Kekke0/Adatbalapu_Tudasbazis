package Model.CikkOriented;

public class Modositas {
    private String CikkID, Leiras,Datum;

    public Modositas(String cikkID, String leiras, String datum) {
        CikkID = cikkID;
        Leiras = leiras;
        Datum = datum;
    }

    public String getCikkID() {
        return CikkID;
    }

    public void setCikkID(String cikkID) {
        CikkID = cikkID;
    }

    public String getLeiras() {
        return Leiras;
    }

    public void setLeiras(String leiras) {
        Leiras = leiras;
    }

    public String getDatum() {
        return Datum;
    }

    public void setDatum(String datum) {
        Datum = datum;
    }

    @Override
    public String toString() {
        return "Modositas{" +
                "CikkID='" + CikkID + '\'' +
                ", Leiras='" + Leiras + '\'' +
                ", Datum='" + Datum + '\'' +
                '}';
    }
}
