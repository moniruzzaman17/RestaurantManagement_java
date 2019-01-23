/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Restaurent;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author SYSTEM
 */
public class Code_for_Connection {
    
        public Connection conn=null;
    public Statement st;

public Code_for_Connection(){
    try{
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant_management?zeroDateTimeBehavior=convertToNull","root","");
                st=conn.createStatement();
                //JOptionPane.showMessageDialog(null, "Connected");
        }
        catch(Exception e){
                JOptionPane.showMessageDialog(null, e);
        
        }



}
}
