package DAO;

import java.sql.*;

public class ConnectionFactory {
    
    String url="jdbc:postgresql://localhost:5432/webpratice2";
    String user="postgres";
    String pass="riders";
    Connection con;
    
    public Connection getConnection(){
        
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Erro ao conectar com o banco de dados ! " + e.getMessage());
        }
        return null;
    }
    
}
