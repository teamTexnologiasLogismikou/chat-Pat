<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>  
<head> 
<title>Registered</title>
</head> 
<body>
<%
     String fname = request.getParameter("fname");
  
    
try {
    String connectionURL = "jdbc:mysql://localhost:3306/chat";
    Connection connection = null; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    out.println("YOUR NAME IS USER1");
    connection = DriverManager.getConnection(connectionURL, "root", "");
    
    if(!connection.isClosed())
        connection.createStatement();
    
    String query = " insert into contacts (username,friendname)"
        + " values (?, ?)";
 
      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = connection.prepareStatement(query);
      preparedStmt.setString (1, "user1");
      preparedStmt.setString (2, fname);
      
 
      // execute the preparedstatement
      preparedStmt.execute();
    

        
    connection.close();
}catch(Exception ex){
    out.println("Unable to connect to database.");
}
%>
<div class="main-form">
       <form action="main.html" method="POST">
           <fieldset>
             
               <div class="form-body">
      
                   
                  
                   <div class="form-group text-center">
                       <button class="btn btn-default btn-lg text-right" type="submit" >back</button>
                       </div>
               </div>
           </fieldset>
       </form>
   </div>  
</html>