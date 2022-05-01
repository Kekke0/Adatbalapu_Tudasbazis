package DAO;

import Model.CikkOriented.Cikk;
import Model.CikkOriented.Kategoria;
import Model.CikkOriented.Modositas;
import Model.CikkOriented.Hibakezeles.Hiba;
import Model.CikkOriented.Hibakezeles.Javitas;
import Model.UserBased.Admin;
import Model.UserBased.Ban;
import Model.UserBased.Felhasznalo;
import Model.UserBased.Lektor;
import Model.UserBased.Nyelvtudas;


import javax.management.StringValueExp;
import java.sql.Date;
import java.sql.PreparedStatement;
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
    
     public Boolean addBan(Ban uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into EN.BAN (FELHASZNALOID,ADMINID,\"Date\",INDOK,HOSSZ) values (?,?,to_date('22-JAN.  -01','RR-MON-DD'),?,?)");
        stmt.setString(1,uj.getFelhasznaloID());
        stmt.setString(2,uj.getAdminID());
         stmt.setString(3,uj.getIndok());
        stmt.setString(4,uj.getHossz());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
     public Boolean addModositas(Modositas uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into MODOSITAS (CIKKID,LEIRAS,DATUM) values(?,?,to_date('22-JAN.  -01','RR-MON-DD'))");
        stmt.setString(1,uj.getCikkID());
        stmt.setString(2, uj.getDatum());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean addHiba(Hiba uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into HIBA (ID,LEIRAS,JAVITVA,JELENTOID,HIBASCIKKID) values (?,?,?,?,?)");
        stmt.setString(1,uj.getID());
        stmt.setString(2,uj.getLeiras());
        int a=0;
        if (uj.isJavitva())
                a=1;
        stmt.setInt(3, a);
        stmt.setString(4,uj.getJelentoID());
        stmt.setString(5,uj.getHibasCikkID());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
      public Boolean addJavitas(Javitas uj) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("Insert into EN.JAVITAS (ADMINID,HIBAID,JEGYZET) values (?,?,?)");
        stmt.setString(1,uj.getAdminID());
        stmt.setString(2,uj.getHibaID());
        stmt.setString(3, uj.getJegyzet());
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
}
