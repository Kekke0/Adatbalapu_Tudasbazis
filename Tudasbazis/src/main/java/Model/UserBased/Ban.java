package Model.UserBased;

public class Ban {
    private String FelhasznaloID, AdminID, Date, Indok, Hossz;

    public Ban(String felhasznaloID, String adminID, String date, String indok, String hossz) {
        FelhasznaloID = felhasznaloID;
        AdminID = adminID;
        Date = date;
        Indok = indok;
        Hossz = hossz;
    }

    public String getFelhasznaloID() {
        return FelhasznaloID;
    }

    public void setFelhasznaloID(String felhasznaloID) {
        FelhasznaloID = felhasznaloID;
    }

    public String getAdminID() {
        return AdminID;
    }

    public void setAdminID(String adminID) {
        AdminID = adminID;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        Date = date;
    }

    public String getIndok() {
        return Indok;
    }

    public void setIndok(String indok) {
        Indok = indok;
    }

    public String getHossz() {
        return Hossz;
    }

    public void setHossz(String hossz) {
        Hossz = hossz;
    }

    @Override
    public String toString() {
        return "Ban{" +
                "FelhasznaloID='" + FelhasznaloID + '\'' +
                ", AdminID='" + AdminID + '\'' +
                ", Date='" + Date + '\'' +
                ", Indok='" + Indok + '\'' +
                ", Hossz='" + Hossz + '\'' +
                '}';
    }
}
