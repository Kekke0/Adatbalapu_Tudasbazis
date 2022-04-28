package Model.CikkOriented;

public class Kategoria {
    private String Nev;
    private String Bovebben;

    public Kategoria(String nev, String bovebben) {
        Nev = nev;
        Bovebben = bovebben;
    }

    public String getNev() {
        return Nev;
    }

    public void setNev(String nev) {
        Nev = nev;
    }

    public String getBovebben() {
        return Bovebben;
    }

    public void setBovebben(String bovebben) {
        Bovebben = bovebben;
    }

    @Override
    public String toString() {
        return "Kategoria{" +
                "Nev='" + Nev + '\'' +
                ", Bovebben='" + Bovebben + '\'' +
                '}';
    }
}
