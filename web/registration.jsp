<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>  
<head> 
<title>Registered</title>
</head> 
<body>
<%
     String fname = request.getParameter("fname");
     String lname = request.getParameter("lname");
     String email = request.getParameter("email");
     String password = request.getParameter("password");
    
try {
    String connectionURL = "jdbc:mysql://localhost:3306/register";
    Connection connection = null; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    connection = DriverManager.getConnection(connectionURL, "root", "root");
    if(!connection.isClosed())
        connection.createStatement();
    Statement st = connection.createStatement();
        st.executeUpdate("INSERT INTO register " + "VALUES ('"+ fname + "', '"+ lname +"', '"+ email +"', '"+ password +"')");
        
    connection.close();
}catch(Exception ex){
    out.println("Unable to connect to database.");
}
%>
<h1>Account Created</h1>

        <button style="height:25px; width:130px"class="btn btn-default btn-lg text-left" type="button" onclick=window.location.href="index.html">Back</button>
</body> 
</html>