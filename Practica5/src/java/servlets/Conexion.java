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
    Connection conexion = null;
    
    //Constructor de la clase.
    public Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conexion = DriverManager.getConnection(url, "root", "");
            if(conexion != null){
                System.out.println("Conexion exitosa");
            }
        }catch(Exception e){
            System.out.println(e);
        }
    }
    
    //Método para inciar la conexión.
    public boolean inciarConexion(String user, String password){
        boolean status = false;
        try{
            Connection conexion = DriverManager.getConnection(this.url, "root", "");
            String query = "SELECT * FROM usuarios WHERE user= '"+user+"' AND password= '"+password+"'";
            Statement st = conexion.prepareStatement(query);
            ResultSet rs = st.executeQuery(query);
            if(rs.next()){
                status = true;
            }
        } catch(SQLException e){
            System.err.println(e);
        } 
        return status;
    }

}