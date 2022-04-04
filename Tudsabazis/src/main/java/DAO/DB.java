package DAO;
import UserBased.Felhasznalo;
import oracle.jdbc.pool.OracleDataSource;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DB {
    private ResultSet rs;
    private Statement stmt;
    private OracleDataSource ods;
    private String user="EN",pass="1234";

    public static Integer parseint(String s){
        Integer i=null;
        try{
            i= Integer.parseInt(s);
        }catch (NumberFormatException n){

        }
        return i;
    }
    public DB(){
        try{
            ods= new OracleDataSource();
            Class.forName("oracle.jdbc.OracleDriver");
            ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Csatlakozási hiba");
        }
    }

    public ArrayList<Felhasznalo> Felhasznolvas(){
        ArrayList<Felhasznalo> felh=new ArrayList<Felhasznalo>();
        try{
            Connection conn =ods.getConnection(user,pass);
            stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select * from felhasznalo";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Felhasznalo a =new Felhasznalo(rs.getString(1),rs.getString(2),rs.getString(4),rs.getString(3));
                felh.add(a);
                System.out.println(a);
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Lekérdezési hiba");
        }
        return felh;
    }
}
