package Model.UserBased;

import java.util.List;

public class Lektor extends Felhasznalo {
    private String Szakterulet, Intezet, TudFokozat;
    private List<Nyelvtudas> nyelvek;

    public Lektor(String ID, String nev, String email, String jelszo, String szakterulet, String intezet, String tudFokozat) {
        super(ID, nev, email, jelszo);
        Szakterulet = szakterulet;
        Intezet = intezet;
        TudFokozat = tudFokozat;
    }

    public Lektor(String ID, String nev, String email, String jelszo) {
        super(ID, nev, email, jelszo);
    }
    public Lektor(Felhasznalo elod){
        super(elod.getID(), elod.getNev(), elod.getEmail(), elod.getJelszo());
    }

    public String getSzakterulet() {
        return Szakterulet;
    }

    public void setSzakterulet(String szakterulet) {
        Szakterulet = szakterulet;
    }

    public String getIntezet() {
        return Intezet;
    }

    public void setIntezet(String intezet) {
        Intezet = intezet;
    }

    public String getTudFokozat() {
        return TudFokozat;
    }

    public void setTudFokozat(String tudFokozat) {
        TudFokozat = tudFokozat;
    }

    @Override
    public String toString() {
        return "{\n" +
                "\"ID\":\"" + super.getID() + "\",\n" +
                "\"Nev\":'" + super.getNev() + "\",\n" +
                "\"Email\":\"" + super.getEmail() + "\",\n" +
                "\"jelszo\":\"" + super.getJelszo() + "\",\n" +
                "\"Szakterulet\":\"" + Szakterulet + "\",\n" +
                "\"Intezet\":\"" + Intezet + "\",\n" +
                "\"TudFokozat\":" + TudFokozat + "\"\n"+
                "}";
    }
}
