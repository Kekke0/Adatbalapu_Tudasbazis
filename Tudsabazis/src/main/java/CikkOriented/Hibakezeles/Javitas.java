package CikkOriented.Hibakezeles;

public class Javitas {
    private String AdminID, HibaID, Date, Jegyzet;

    public Javitas(String adminID, String hibaID, String date, String jegyzet) {
        AdminID = adminID;
        HibaID = hibaID;
        Date = date;
        Jegyzet = jegyzet;
    }

    public String getAdminID() {
        return AdminID;
    }

    public void setAdminID(String adminID) {
        AdminID = adminID;
    }

    public String getHibaID() {
        return HibaID;
    }

    public void setHibaID(String hibaID) {
        HibaID = hibaID;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        Date = date;
    }

    public String getJegyzet() {
        return Jegyzet;
    }

    public void setJegyzet(String jegyzet) {
        Jegyzet = jegyzet;
    }

    @Override
    public String toString() {
        return "Javitas{" +
                "AdminID='" + AdminID + '\'' +
                ", HibaID='" + HibaID + '\'' +
                ", Date='" + Date + '\'' +
                ", Jegyzet='" + Jegyzet + '\'' +
                '}';
    }
}
