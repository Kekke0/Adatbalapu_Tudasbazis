//HIBÁS VAGYOK
// package DAO;
//
//import UserBased.Felhasznalo;
//
//import java.sql.PreparedStatement;
//import java.sql.Statement;
//
//public class Update extends ConnectionProtocol {
//    private int rs;
//    private Statement stmt;
//
//    public Update() {
//        super();
//    }
//
//    public int getRs() {
//        return rs;
//    }
//
//    public Boolean FelhaszID(Felhasznalo updated) throws Exception{
//        Start();
//        System.out.println("What?");
//        PreparedStatement stmt=super.getConn().prepareStatement("UPDATE felhasznalo SET NEV = ?,JELSZO = ?,EMAIL = ? WHERE ID=?");
//        stmt.setString(1,updated.getNev());
//        stmt.setString(2,updated.getJelszo());
//        stmt.setString(3,updated.getEmail());
//        stmt.setString(4,updated.getID());
//        System.out.println("What the...?");
//        rs= stmt.executeUpdate();
//        System.out.println("What the...fck?");
//        Stop();
//        return rs>0;
//    }
//}
