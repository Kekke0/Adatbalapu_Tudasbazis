package DAO;

import UserBased.Felhasznalo;

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
    
    public Boolean NyelvtudasLektorID(String LektorID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete nyelvtudas where LektorID = ?");
        stmt.setString(1,LektorID);
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
        stmt.setString(1,ID);
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
    
    public Boolean KulcsszoCimID(String CimID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete kulcsszo where CimID = ?");
        stmt.setString(1,CimID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    public Boolean BanFelhaszID(String FelhasznaloID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete ban where FelhasznaloID = ?");
        stmt.setString(1,FelhasznaloID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
      public Boolean ModositasCikkId(String ID) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("delete felhasznalo where ID = ?");
        stmt.setString(1,ID);
        rs= stmt.executeUpdate();
        Stop();
        return rs>0;
    }
    
    
    
}
