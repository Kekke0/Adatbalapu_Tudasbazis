package DAO;

import CikkOriented.Cikk;
import CikkOriented.Hibakezeles.Hiba;
import CikkOriented.Hibakezeles.Javitas;
import CikkOriented.Kategoria;
import CikkOriented.Modositas;
import UserBased.*;
import oracle.jdbc.pool.OracleDataSource;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class SelectAll extends ConnectionProtocol {
    private ResultSet rs;
    private Statement stmt;
    private final String user="EN", pass="1234";

    public SelectAll() {
        super();
    }

    public ArrayList<Felhasznalo> Felhasznall(){
        ArrayList<Felhasznalo> felh=new ArrayList<Felhasznalo>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select * from felhasznalo";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Felhasznalo a =new Felhasznalo(rs.getString(1),rs.getString(2),rs.getString(4),rs.getString(3));
                felh.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return felh;
    }

    public ArrayList<Admin> Adminall(){
        ArrayList<Admin> ret=new ArrayList<Admin>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select * from admin";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Admin a =new Admin(rs.getString(1),rs.getString(2),rs.getString(4),rs.getString(3));
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

    public ArrayList<Lektor> Lektorall(){
        ArrayList<Lektor> ret=new ArrayList<Lektor>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select * from Lektor";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Lektor a =new Lektor(rs.getString(1),rs.getString(2),rs.getString(4),rs.getString(3),rs.getString(5),rs.getString(6),rs.getString(7));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Lekérdezési hiba");
        }
        return ret;
    }

    public ArrayList<Nyelvtudas> Nyelvall(){
        ArrayList<Nyelvtudas> ret=new ArrayList<Nyelvtudas>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select * from Nyelvtudas";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Nyelvtudas a =new Nyelvtudas(rs.getString(3),rs.getString(2));
                a.setLektorID(rs.getString(1));
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

    public ArrayList<Ban> Banall(){
        ArrayList<Ban> ret=new ArrayList<Ban>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select * from Ban";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Ban a =new Ban(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Lekérdezési hiba");
        }
        return ret;
    }
    public ArrayList<Cikk> ABCikkek(){
        ArrayList<Cikk> ret=new ArrayList<Cikk>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select * from Cikk ORDER BY cim";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Cikk a =new Cikk(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Lekérdezési hiba");
        }
        return ret;
    }

    public ArrayList<Kategoria> Katall() {
        ArrayList<Kategoria> ret = new ArrayList<Kategoria>();
        try {
            Start();
            stmt = super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            String sql = "select * from Kategoria";
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Kategoria a = new Kategoria(rs.getString(1), rs.getString(2));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        } catch (Exception e) {
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }
    public ArrayList<Modositas> Modall() {
        ArrayList<Modositas> ret = new ArrayList<Modositas>();
        try {
            Start();
            stmt = super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            String sql = "select * from Modositas";
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Modositas a = new Modositas(rs.getString(1), rs.getString(2),rs.getString(3));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        } catch (Exception e) {
            System.out.println("Lekérdezési hiba");
            e.printStackTrace();
        }
        return ret;
    }
    public ArrayList<Hiba> Hibaall(){
        ArrayList<Hiba> ret=new ArrayList<Hiba>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select * from Hiba";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Hiba a =new Hiba(rs.getString(1),rs.getString(2),rs.getBoolean(3),rs.getString(4),rs.getString(5));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Lekérdezési hiba");
        }
        return ret;
    }
    public ArrayList<Javitas> Javitall(){
        ArrayList<Javitas> ret=new ArrayList<Javitas>();
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
            String sql="select * from Javitas";
            rs= stmt.executeQuery(sql);
            while (rs.next()){
                Javitas a =new Javitas(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
                ret.add(a);
                //System.out.println(a);
            }
            Stop();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Lekérdezési hiba");
        }
        return ret;
    }
}

