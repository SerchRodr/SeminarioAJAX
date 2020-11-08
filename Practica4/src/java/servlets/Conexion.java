/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 *
 * @author Sergio Rodríguez
 */
public class Conexion {
    
    private String url = "jdbc:mysql://localhost:3306/practica4";
    private String driver = "com.mysql.cj.jdbc.Driver";
    
    //Constructor de la clase.
    public Conexion() {
        try{
            Class.forName(this.driver).newInstance();
        } catch(Exception e){
            System.err.println(e);
        }
    }
    
    //Método para inciar la conexión.
    public boolean inciarConexion(String user, String password){
        boolean status = false;
        try{
            Connection conexion = DriverManager.getConnection(url, "root", "root");
            String query = "SELECT * FROM 'usuarios' WHERE user='"+user+"' AND password='"+password+"'";
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery(query);
            status = rs.next();
            rs.close();
            st.close();
            conexion.close();
        } catch(SQLException e){
            System.err.println(e);
        } 
        return status;
    }

}