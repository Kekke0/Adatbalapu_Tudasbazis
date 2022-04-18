package DAO;

import UserBased.Admin;
import UserBased.Felhasznalo;
import UserBased.Lektor;

import java.security.InvalidParameterException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Find extends ConnectionProtocol {
    private ResultSet rs;
    private Statement stmt;

    public Find() {
        super();
    }

    public int FelhaszCID() throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("select ID from felhasznalo");
        rs= stmt.executeQuery();
        int legnagy=0;
        while (rs.next()){
            String[] a = rs.getString(1).split("U");
            int ertek = Integer.parseInt(a[1]);
            if (ertek>legnagy){
                legnagy=ertek;
            }
        }
        Stop();
        return legnagy;
    }

    public Felhasznalo FelhaszEmail(String email) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("select * from felhasznalo where Email = ?");
        stmt.setString(1,email);
        rs= stmt.executeQuery();
        rs.next();
        Felhasznalo felh =new Felhasznalo(rs.getString(1),rs.getString(2),rs.getString(4),rs.getString(3));
        Stop();
        return felh;
    }
    public Felhasznalo LektorEmail(String email) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("select * from lektor where Email = ?");
        stmt.setString(1,email);
        rs= stmt.executeQuery();
        rs.next();
        Lektor felh =new Lektor(rs.getString(1),rs.getString(2),rs.getString(4),rs.getString(3),rs.getString(5),rs.getString(6),rs.getString(7));
        Stop();
        return felh;
    }
    public Admin AdminEmail(String email) throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("select * from admin where Email = ?");
        stmt.setString(1,email);
        rs= stmt.executeQuery();
        rs.next();
        Admin felh =new Admin(rs.getString(1),rs.getString(2),rs.getString(4),rs.getString(3));
        Stop();
        return felh;
    }

    public int CikkCID() throws Exception{
        Start();
        PreparedStatement stmt=super.getConn().prepareStatement("select ID from cikk");
        rs= stmt.executeQuery();
        int legnagy=0;
        while (rs.next()){
            String[] a = rs.getString(1).split("C");
            int ertek = Integer.parseInt(a[1]);
            if (ertek>legnagy){
                legnagy=ertek;
            }
        }
        Stop();
        return legnagy;
    }
}
