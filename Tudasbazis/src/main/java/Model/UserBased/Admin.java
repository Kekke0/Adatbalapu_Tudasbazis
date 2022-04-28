package Model.UserBased;

public class Admin extends Felhasznalo {
    public Admin(String ID, String nev, String email, String jelszo) {
        super(ID, nev, email, jelszo);
    }

    public Admin(Felhasznalo elod){
        super(elod.getID(), elod.getNev(), elod.getEmail(), elod.getJelszo());
    }

    @Override
    public String toString() {
        return "{" +
                "\"ID\":\"" + super.getID() + "\",\n" +
                "\"Nev\":'" + super.getNev() + "\",\n" +
                "\"Email\":\"" + super.getEmail() + "\",\n" +
                "\"jelszo\":\"" + super.getJelszo() + "\"\n" +
                "},";
    }
}
