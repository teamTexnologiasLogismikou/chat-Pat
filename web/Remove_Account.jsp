<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Remove Account</title> 
    </head> 
    <body> 
 <%

                    String user = request.getParameter("email");
                    String pass = request.getParameter("password");
                    String pass2 = request.getParameter("password2");
                    String connectionURL = "jdbc:mysql://localhost:3306/register";
 
                    try{
 
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con=DriverManager.getConnection(connectionURL, "root", "");
                         Statement st=con.createStatement();
                         ResultSet rs=st.executeQuery("SELECT Email,Password FROM register WHERE Email='"+user+"' AND Password='"+pass+"'");
                         
                         while(rs.next())
                             {
                                 
                             String email=rs.getString(1);
                             String password=rs.getString(2);
                             
                             if(pass.equals(password) != pass2.equals(password)){
                                 response.sendRedirect("Error.jsp");
                                 con.close();
                             }
                             
                             if(user.equals(email) && pass.equals(password) && pass2.equals(password)){
                                 session.setAttribute("email",email);
                                 
                                 String sql = "DELETE FROM register WHERE Email=?";
			
			PreparedStatement statement = con.prepareStatement(sql);
                        statement.setString(1, user);
                        
                        			int rowsDeleted = statement.executeUpdate();
			if (rowsDeleted > 0) {System.out.println("A user was deleted successfully!");}
                                 
                                 response.sendRedirect("Deleted.jsp");
                             }
                             else {
                                 
                               response.sendRedirect("Error.jsp");
                                     }
                             }
                         response.sendRedirect("Error.jsp");
                    }catch(Exception e1){} 
 %>
    </body> 
</html> 