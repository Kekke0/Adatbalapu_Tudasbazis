package Model.UserBased;

import DAO.Find;

public class Felhasznalo {
    private String ID;
    private String Nev;
    private String Email;
    private String jelszo;
    private static int CID=0;

    public Felhasznalo( String nev, String email, String jelszo) {
        ID="U"+getCID();
        Nev = nev;
        Email = email;
        this.jelszo = jelszo;
    }

    public Felhasznalo(String ID, String nev, String email, String jelszo) {
        this.ID = ID;
        Nev = nev;
        Email = email;
        this.jelszo = jelszo;
    }

    public static int getCID() {
        try {
            CID= new Find().FelhaszCID()+1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return CID;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getNev() {
        return Nev;
    }

    public void setNev(String nev) {
        Nev = nev;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getJelszo() {
        return jelszo;
    }

    public void setJelszo(String jelszo) {
        this.jelszo = jelszo;
    }

    @Override
    public String toString() {
        return "{\n" +
                "\"ID\":\"" + ID + "\",\n" +
                "\"Nev\":'" + Nev + "\",\n" +
                ", \"Email\":\"" + Email + "\",\n" +
                ", \"jelszo\":\"" + jelszo + "\"\n" +
                "},";
    }
}
