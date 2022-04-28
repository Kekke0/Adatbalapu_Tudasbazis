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

public class Delete extends ConnectionProtocol {
    private int rs;
    private Statement stmt;

    public Delete() {
        super();
    }

    public int getRs() {
        return rs;
    }

    public Boolean FelhaszID(String ID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete felhasznalo where ID = ?");
        stmt.setString(1,ID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
      public Boolean LektorID(String ID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete lektor where ID = ?");
        stmt.setString(1,ID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean Nyelvtudas(String LektorID, String nyelv) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete nyelvtudas where LektorID = ? and nyelv = ?");
        stmt.setString(1,LektorID);
        stmt.setString(2,nyelv);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean AdminID(String ID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete admin where ID = ?");
        stmt.setString(1,ID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean KategoriaNev(String Nev) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete kategoria where Nev = ?");
        stmt.setString(1,Nev);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean CikkID(String ID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete cikk where ID = ?");
        stmt.setString(1,ID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean Kulcsszo(String CimID, String szo) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete kulcsszo where CikkID = ? and szo = ?");
        stmt.setString(1,CimID);
        stmt.setString(2,szo);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }

    public Boolean cleanKulcszo(String CikkID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete kulcsszo where CikkID = ?");
        stmt.setString(1,CikkID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    //Egy felhasználó minden Bannját törli. (could be usefull)
    public Boolean ClearPast(String FelhasznaloID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete ban where FelhasznaloID = ?");
        stmt.setString(1,FelhasznaloID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean Modositas(String CikkID, String date) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete modositas where CikkID = ? and datum");
        stmt.setString(1,CikkID);
          stmt.setString(2,date);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean HibaID(String ID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete hiba where ID = ?");
        stmt.setString(1,ID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean Javitas(String HibaID, String adminID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete javitas where HibaID = ? and adminID = ?");
        stmt.setString(1,HibaID);
        stmt.setString(2,adminID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
}
