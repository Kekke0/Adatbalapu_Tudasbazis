package DAO;

import oracle.jdbc.pool.OracleDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionProtocol {
    private static OracleDataSource ods;
    //private final String user="EN", pass="1234";
    private Connection conn;

    public ConnectionProtocol(){
        try{
            ods= new OracleDataSource();
            Class.forName("oracle.jdbc.OracleDriver");
            ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");
        } catch (Exception e) {
            System.out.println("Csatlakozási hiba");
            e.printStackTrace();
        }
    }

    public OracleDataSource getOds() {
        return ods;
    }

    protected Connection getConn() {
        return conn;
    }

    protected void Start() throws SQLException {
        conn = ods.getConnection("EN", "1234");

    }
    protected void Stop() throws SQLException {
        conn.close();

    }
    /*
    Dumy leszármazott method:
        try{
            Start();
            stmt=super.getConn().createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.!Írni/Olvasni!);
            String sql=!SQLParancs!;
            rs= stmt.executeQuery(sql);
            !Parancsok!
            Stop();
        }catch (Exception e){
            System.err.println("Hiba");
            e.printStackTrace();

        }
     */
}
