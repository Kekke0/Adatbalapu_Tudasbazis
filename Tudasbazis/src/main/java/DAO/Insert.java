package DAO;

import CikkOriented.Cikk;
import UserBased.Felhasznalo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Insert extends ConnectionProtocol{
    private int rs;
    private Statement stmt;

    public Insert() {
        super();

    }

    public int getRs() {
        return rs;
    }

    public Boolean addFelhasz(Felhasznalo uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into FELHASZNALO (ID,NEV,JELSZO,EMAIL) values (?,?,?,?)");
        stmt.setString(1,uj.getID());
        stmt.setString(2,uj.getNev());
        stmt.setString(3,uj.getJelszo());
        stmt.setString(4,uj.getEmail());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean addLektor(Lektor uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into LEKTOR (ID,JELSZO,NEV,EMAIL,SZAKTERULET,INTEZET,TUDOMANYOS_FOKOZAT) values (?,?,?,?,?,?,?)");
        stmt.setString(1,uj.getID());
        stmt.setString(3,uj.getJelszo());
        stmt.setString(2,uj.getNev());
        stmt.setString(4,uj.getEmail());
        stmt.setString(5,uj.getSzakterulet());
        stmt.setString(6,uj.getIntezet());
        stmt.setString(7,uj.getTudomanyos_fokozat());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }

    public Boolean addCikk(Cikk ujc) throws Exception {
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into EN.CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values (?,?,?,?,?,?,?,?,?)");
        stmt.setString(1, ujc.getID());
        stmt.setString(2,ujc.getCim());
        stmt.setString(3, ujc.getTartalom());
        stmt.setString(4,ujc.getAllapot());
        stmt.setString(5,ujc.getNyelv());
        stmt.setString(6,ujc.getSzerzo());
        stmt.setString(7,ujc.getKategoria());
        stmt.setString(8,ujc.getLektoralta());
        stmt.setString(9,ujc.getLektoralasDatuma());
        rs= stmt.executeUpdate();
        if (!ujc.getKulcsszo().isEmpty())
            for (String n : ujc.getKulcsszo()) {
                if(!addKulcsszo(ujc.getID(), n))
                    throw new Exception();
            }
        Stop();
        return rs>0;
    }
    public Boolean addKulcsszo(String CimID,String uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into EN.KULCSSZO (CIKKID,SZO) values (?,?)");
        stmt.setString(1,CimID);
        stmt.setString(2,uj);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }

}
