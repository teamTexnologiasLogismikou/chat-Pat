package models;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class User {
    
    private String uid;
    private String firstName;
    private String lastName;
    private String username;
    private String password;
    
    public User(){
        uid="";
        firstName="";
        lastName="";
        username="";
        password="";
    }
    
    public String getUid() {
        return uid;
    }
    
    public String getLastName() {
        return lastName;
    }
    
    public String getFirstName() {
        return firstName;
    }
    
    public String getUsername() {
        return username;
    }
    
    public String getPassword() {
        return password;
    }


    public void setUid(String uid){
        this.uid = uid;
    }
    
    public void setLastName(String lastName){
        this.lastName =lastName;
    }
    
    public void setFirstName(String firstName){
        this.firstName =firstName;
    }

    public void setUsername(String username){
        this.username=username;
    }

    public void setPassword(String password) {
        this.password=password;
    }
    
    public static boolean LoginUser(String username,String password) {
        boolean check =false;
        try {      
            DAO dao=new DAO();
            Connection con= dao.connect();
            PreparedStatement ps =con.prepareStatement("select * from users where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs1 =ps.executeQuery();
            check = rs1.next();
            con.close();        
            }catch(Exception e){
                e.printStackTrace();
            }
        return check;    
    }

    public void getUser(){
        try {      
            DAO dao=new DAO();
            Connection con= dao.connect();
            String sqlString = "SELECT * FROM users WHERE username = '"+username+"'";
            Statement s = con.createStatement();
            ResultSet rs=s.executeQuery(sqlString);
            while(rs.next()){
                uid=rs.getString("uid");
                lastName= rs.getString("last_name");
                firstName = rs.getString("first_name");
                username= rs.getString("username");
                password = rs.getString("password");
            }
            s.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
    
    public void register(){
        try{    
            DAO dao=new DAO();
            Connection con= dao.connect();
            String sqlString="INSERT INTO users (last_name,first_name,username,password) VALUES ('"+firstName+"','"+lastName+"','"+username+"','"+password+"')";
            Statement s = con.createStatement();
            try{    
                s.executeUpdate(sqlString);
                s.close();
                con.close();
            } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}
        } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}  
    }

    
    public ArrayList<User> getAllUsers() throws SQLException{
        PreparedStatement pst = null;
        ResultSet rs;
        ArrayList<User> users = new ArrayList<User>();
        DAO dao=new DAO();
        Connection con= dao.connect();
        String sqlString = "SELECT * FROM users WHERE users.username <> "+"'"+username+"'";
            pst = con.prepareStatement("");
            pst.executeQuery(sqlString);
            rs = pst.getResultSet();
            while(rs.next()){
                User user = new User();
                user.setUid(rs.getString("uid"));
                user.setLastName(rs.getString("last_name"));
                user.setFirstName(rs.getString("first_name"));
                user.setUsername(rs.getString("username"));
                users.add(user);
            }
            rs.close();
            pst.close();

        return users;
    }
}
