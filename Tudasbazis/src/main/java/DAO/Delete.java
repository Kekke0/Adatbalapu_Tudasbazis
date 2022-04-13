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
}
