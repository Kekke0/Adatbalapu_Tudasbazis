package UserBased;

public class Felhasznalo {
    private String ID;
    private String Nev;
    private String Email;
    private String jelszo;

    public Felhasznalo(String ID, String nev, String email, String jelszo) {
        this.ID = ID;
        Nev = nev;
        Email = email;
        this.jelszo = jelszo;
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
