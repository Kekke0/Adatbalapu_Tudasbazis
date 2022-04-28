package Model.CikkOriented.Hibakezeles;

import DAO.Find;

public class Hiba {
    private String ID, Leiras;
    private boolean Javitva;
    private String JelentoID, HibasCikkID;

    public Hiba(String ID, String leiras, boolean javitva, String jelentoID, String hibasCikkID) {
        this.ID = ID;
        Leiras = leiras;
        Javitva = javitva;
        JelentoID = jelentoID;
        HibasCikkID = hibasCikkID;
    }

    public Hiba(String leiras, boolean javitva, String jelentoID, String hibasCikkID) {
        try {
            this.ID = "H"+new Find().HibaCID()+1;
        } catch (Exception e) {
            e.printStackTrace();
            this.ID="H00";
        }
        Leiras = leiras;
        Javitva = javitva;
        JelentoID = jelentoID;
        HibasCikkID = hibasCikkID;
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

    public String getHibasCikkID() {
        return HibasCikkID;
    }

    public void setHibasCikkID(String hibasCikkID) {
        HibasCikkID = hibasCikkID;
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
                ", Hibakezeles='" + HibasCikkID + '\'' +
                '}';
    }
}
