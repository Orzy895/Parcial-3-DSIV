package com.main.parcial.Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    public Connection openDb() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/genshinparcialdesarrollo","root","6740");
            return con;
        }
        catch (SQLException e){
            int x = 1;
        }
        catch (ClassNotFoundException e){
            int x = 1;
        }
        return null;
    }
}
