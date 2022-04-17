package DAO;

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

    public Boolean Felhasz(Felhasznalo uj) throws Exception{
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
}
