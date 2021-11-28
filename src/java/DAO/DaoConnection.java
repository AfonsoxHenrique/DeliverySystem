/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Pichau
 */
public class DaoConnection {
    
    public Connection dbConection() throws ClassNotFoundException
    {
        Connection con = null;
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/tartarugacometa?user=root&password=";
            con = DriverManager.getConnection(url);
        } 
        catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return con;
    }
    
}
