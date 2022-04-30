package DAO;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class NonTrivial extends ConnectionProtocol{
    private ResultSet rs;
    private Statement stmt;

    public NonTrivial() {
        super();
    }


    public ArrayList<Map<String,String>> Bannum(){
        ArrayList<Map<String,String>> ret=new ArrayList<Map<String,String>>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select nev, count(id) from felhasznalo inner join ban on felhasznalo.id = ban.felhasznaloid group by felhasznalo.nev";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Map a = new HashMap();
                a.put("nev",rs.getString(1));
                a.put("count",rs.getString(2));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }

    public ArrayList<Map<String,String>> Hibajel(){
        ArrayList<Map<String,String>> ret=new ArrayList<Map<String,String>>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select nev, count(felhasznalo.id) from felhasznalo inner join hiba on felhasznalo.id = hiba.jelentoid group by felhasznalo.nev";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Map a = new HashMap();
                a.put("nev",rs.getString(1));
                a.put("count",rs.getString(2));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }

    public ArrayList<Map<String,String>> Cikknum(){
        ArrayList<Map<String,String>> ret=new ArrayList<Map<String,String>>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select nev, count(felhasznalo.id) from felhasznalo inner join cikk on felhasznalo.id = cikk.felhasznaloid_szerzo group by felhasznalo.nev";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Map a = new HashMap();
                a.put("nev",rs.getString(1));
                a.put("count",rs.getString(2));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }

    public ArrayList<Map<String,String>> Hibajav(){
        ArrayList<Map<String,String>> ret=new ArrayList<Map<String,String>>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select nev, count(admin.id) from admin inner join javitas on admin.id = javitas.adminid group by admin.nev";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Map a = new HashMap();
                a.put("nev",rs.getString(1));
                a.put("count",rs.getString(2));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }

    public ArrayList<Map<String,String>> Cikkmod(){
        ArrayList<Map<String,String>> ret=new ArrayList<Map<String,String>>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select cim, count(cikk.id) from cikk inner join modositas on cikk.id = modositas.cikkid group by cikk.cim";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Map a = new HashMap();
                a.put("nev",rs.getString(1));
                a.put("count",rs.getString(2));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }

    public ArrayList<Map<String,String>> Nyelevek(){
        ArrayList<Map<String,String>> ret=new ArrayList<Map<String,String>>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select nev, count(lektor.id) from lektor inner join nyelvtudas on lektor.id = nyelvtudas.lektorid group by lektor.nev";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Map a = new HashMap();
                a.put("nev",rs.getString(1));
                a.put("count",rs.getString(2));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }

    public ArrayList<Map<String,String>> Lektoralt(){
        ArrayList<Map<String,String>> ret=new ArrayList<Map<String,String>>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select nev, count(lektor.id) from lektor inner join cikk on lektor.id = cikk.lektoralta group by lektor.nev";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Map a = new HashMap();
                a.put("nev",rs.getString(1));
                a.put("count",rs.getString(2));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }

    /**
     * Megállapítja mennyi hibát jelntettek egy-egy cikkhez
     */
    public ArrayList<Map<String,String>> Cikkhibai(){
        ArrayList<Map<String,String>> ret=new ArrayList<Map<String,String>>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select CIKK.ID, COUNT(HIBA.ID) AS HIBA from CIKK inner join HIBA on CIKK.ID = HIBA.HIBASCIKKID WHERE HIBA.JAvitva = 0 group by CIKK.ID ORDER BY HIBA";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Map a = new HashMap();
                a.put("ID",rs.getString(1));
                a.put("hibak",rs.getString(2));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }
}
