package DAO;

import CikkOriented.Cikk;
import UserBased.Felhasznalo;

import java.sql.PreparedStatement;
import java.sql.Statement;

public class Update extends ConnectionProtocol {
    private int rs;
    private Statement stmt;

    public Update() {
        super();
    }

    public int getRs() {
        return rs;
    }

    public Boolean FelhaszID(Felhasznalo updated) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("UPDATE felhasznalo SET NEV = ?,JELSZO = ?,EMAIL = ? WHERE ID=?");
        stmt.setString(1,updated.getNev());
        stmt.setString(2,updated.getJelszo());
        stmt.setString(3,updated.getEmail());
        stmt.setString(4,updated.getID());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }


    public Boolean UpdateCikk(Cikk upd) throws Exception {
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("UPDATE CIKK SET CIM=?,TARTALOM=?,ALLAPOT=?,NYELV=?,FELHASZNALOID_SZERZO=?,KATEGORIA=?,LEKTORALTA=?,LEKTORALASDATUMA=? where ID =?");
        stmt.setString(9, upd.getID());
        stmt.setString(1,upd.getCim());
        stmt.setString(2, upd.getTartalom());
        stmt.setString(3,upd.getAllapot());
        stmt.setString(4,upd.getNyelv());
        stmt.setString(5,upd.getSzerzo());
        stmt.setString(6,upd.getKategoria());
        stmt.setString(7,upd.getLektoralta());
        stmt.setString(8,upd.getLektoralasDatuma());
        rs= stmt.executeUpdate();
        new Delete().cleanKulcszo(upd.getID());

        if (!upd.getKulcsszo().isEmpty())
            for (String n : upd.getKulcsszo()) {
                if(!new Insert().addKulcsszo(upd.getID(), n))
                    throw new Exception();
            }
        Stop();
        return rs>0;
    }
}
