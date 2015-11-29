<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>JSP Page</title> 
    </head> 
    <body> 
 <%

                    String user=request.getParameter("email");
                    String pass=request.getParameter("password");
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
                             
                             if(user.equals(email) && pass.equals(password)){
                                 session.setAttribute("email",email);
                                 response.sendRedirect("Home.jsp");
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