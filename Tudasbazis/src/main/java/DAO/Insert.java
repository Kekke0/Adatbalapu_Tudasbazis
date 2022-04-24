package DAO;

import CikkOriented.Cikk;
import CikkOriented.Kategoria;
import CikkOriented.Modositas;
import CikkOriented.Hibakezeles.Hiba;
import CikkOriented.Hibakezeles.Javitas;
import UserBased.Admin;
import UserBased.Ban;
import UserBased.Felhasznalo;
import UserBased.Lektor;
import UserBased.Nyelvtudas;



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
        stmt.setString(7,uj.getTudFokozat());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
     public Boolean addNyelvtudas(Nyelvtudas uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into NYELVTUDAS (LEKTORID,NYELV,SZINT) values (?,?,?)");
        stmt.setString(1,uj.getLektorID());
        stmt.setString(2,uj.getNyelv());
        stmt.setString(3,uj.getSzint());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean addAdmin(Admin uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into ADMIN (ID,NEV,JELSZO,EMAIL) values (?,?,?,?)");
        stmt.setString(1,uj.getID());
        stmt.setString(2,uj.getNev());
        stmt.setString(3,uj.getJelszo());
        stmt.setString(4,uj.getEmail());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
      public Boolean addKategoria(Kategoria uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into KATEGORIA (NEV,BOVEBBEN) values (?,?)");
        stmt.setString(1,uj.getNev());
        stmt.setString(2,uj.getBovebben());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }

    public Boolean addCikk(Cikk uj) throws Exception {
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into EN.CIKK (ID,CIM,TARTALOM,ALLAPOT,NYELV,FELHASZNALOID_SZERZO,KATEGORIA,LEKTORALTA,LEKTORALASDATUMA) values (?,?,?,?,?,?,?,?,?)");
        stmt.setString(1, uj.getID());
        stmt.setString(2,uj.getCim());
        stmt.setString(3, uj.getTartalom());
        stmt.setString(4,uj.getAllapot());
        stmt.setString(5,uj.getNyelv());
        stmt.setString(6,uj.getSzerzo());
        stmt.setString(7,uj.getKategoria());
        stmt.setString(8,uj.getLektoralta());
        stmt.setString(9,uj.getLektoralasDatuma());
        rs= stmt.executeUpdate();
        if (!uj.getKulcsszo().isEmpty())
            for (String n : uj.getKulcsszo()) {
                if(!addKulcsszo(uj.getID(), n))
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
    
/*     public Boolean addBan(Ban uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into BAN (FELHASZNALOID,ADMINID,HOSSZ,INDOK,DATE) values (?,?,?,?,?)");
        stmt.setString(1,uj.getFelhasznaloID());
        stmt.setString(2,uj.getAdminID());
        stmt.setString(3,uj.getHossz());
         stmt.setString(4,uj.getIndok());
         stmt.setDate(5,uj.getDate());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
     public Boolean addModositas(Modositas uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into MODOSITAS (CIKKID,DATUM,LEIRAS) values (?,?,?)");
        stmt.setString(1,uj.getCikkID());
        stmt.setDate(2,uj.getDatum());
        stmt.setString(3,uj.getLeiras());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean addHiba(Hiba uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values (?,?,?,?,?)");
        stmt.setString(1,uj.getID());
        stmt.setString(2,uj.getLeiras());
        stmt.setString(3,uj.getJavitva());
        stmt.setString(4,uj.getJelentoID());
        stmt.setString(5,uj.getHibasCikkID());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
      public Boolean addJavitas(Javitas uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into JAVITAS (ADMINID,HIBAID,DATE,JEGYZET) values (?,?,?,?)");
        stmt.setString(1,uj.getAdminID());
        stmt.setString(2,uj.getHibaID());
        stmt.setDate(3,uj.getDate());
        stmt.setString(4,uj.getJegyzet());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }*/
    
}
