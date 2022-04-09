package CikkOriented.Hibakezeles;

public class Hiba {
    private String ID, Leiras;
    private boolean Javitva;
    private String JelentoID, Hibakezeles;

    public Hiba(String ID, String leiras, boolean javitva, String jelentoID, String hibakezeles) {
        this.ID = ID;
        Leiras = leiras;
        Javitva = javitva;
        JelentoID = jelentoID;
        Hibakezeles = hibakezeles;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public boolean isJavitva() {
        return Javitva;
    }

    public void setJavitva(boolean javitva) {
        Javitva = javitva;
    }

    public String getHibakezeles() {
        return Hibakezeles;
    }

    public void setHibakezeles(String hibakezeles) {
        Hibakezeles = hibakezeles;
    }

    public String getLeiras() {
        return Leiras;
    }

    public void setLeiras(String leiras) {
        Leiras = leiras;
    }

    public String getJelentoID() {
        return JelentoID;
    }

    public void setJelentoID(String jelentoID) {
        JelentoID = jelentoID;
    }

    @Override
    public String toString() {
        return "Hiba{" +
                "ID='" + ID + '\'' +
                ", Leiras='" + Leiras + '\'' +
                ", Javitva=" + Javitva +
                ", JelentoID='" + JelentoID + '\'' +
                ", Hibakezeles='" + Hibakezeles + '\'' +
                '}';
    }
}
