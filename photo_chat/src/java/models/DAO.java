
package models;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAO {
    public Connection connect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String dbString = "jdbc:mysql://localhost:3306/chat_db?user=root";
            Connection con = DriverManager.getConnection(dbString);
            return con;
        } catch (ClassNotFoundException | SQLException e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
}
