package DAO;

import java.sql.ResultSet;
import java.sql.Statement;

public class Insert extends ConnectionProtocol{
    private ResultSet rs;
    private Statement stmt;
    private final String user="EN", pass="1234";

    public Insert() {
        super();

    }
}
