package DAO;

import Model.CikkOriented.Cikk;
import Model.UserBased.Felhasznalo;

import java.sql.Date;
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

    public Boolean FelhaszID(String ID, String Jelszo) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("UPDATE felhasznalo SET JELSZO = ?,WHERE ID=?");
        stmt.setString(1,Jelszo);
        stmt.setString(2,ID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }

    public Boolean LEKTORID(String ID, String Jelszo) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("UPDATE LEKTOR SET JELSZO = ?, WHERE ID=?");
        stmt.setString(1,Jelszo);
        stmt.setString(2,ID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    public Boolean ADMINID(String ID, String Jelszo) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("UPDATE ADMIN SET JELSZO = ?, WHERE ID=?");
        stmt.setString(1,Jelszo);
        stmt.setString(2,ID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }


    public Boolean UpdateCikk(Cikk upd) throws Exception {
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("UPDATE CIKK SET CIM=?,TARTALOM=?,ALLAPOT=?,NYELV=?,FELHASZNALOID_SZERZO=?,KATEGORIA=?,LEKTORALTA=?,LEKTORALASDATUMA=? where ID =?");
        stmt.setString(1,upd.getCim());
        stmt.setString(2, upd.getTartalom());
        stmt.setString(3,upd.getAllapot());
        stmt.setString(4,upd.getNyelv());
        stmt.setString(5,upd.getSzerzo());
        stmt.setString(6,upd.getKategoria());
        stmt.setString(7,upd.getLektoralta());
        stmt.setString(8, upd.getLektoralasDatuma());
        stmt.setString(9,upd.getID());
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

    public Boolean UpdateSzerzo(Cikk upd) throws Exception {
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("UPDATE CIKK SET FELHASZNALOID_SZERZO=? where ID =?");
        stmt.setString(1,upd.getSzerzo());
        stmt.setString(2,upd.getID());
        rs= stmt.executeUpdate();
        new Delete().cleanKulcszo(upd.getID());
        Stop();
        return rs>0;
    }
}
