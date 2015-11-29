<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<html> 
    <head>  
        <title>Delete Account</title> 
    </head>
    <body> 
         <h1>Give Your Email And Password To Delete Your Account</h1> 
         
        
                  <form action="Remove_Account.jsp" method="POST">
           <fieldset>
               <div class="text-center">
                   <span class="form-logo glyphicon glyphicon-user"></span>
               </div>
               <div class="form-body">
  
                   </div>
                   <div class="form-group">
                       <input class="form-control" type="email" id="email" name="email" placeholder="Email">
                   </div>
                   <div class="form-group">
                       <input class="form-control" type="password" id="password" name="password" placeholder="Password">
                   </div>
               <div class="form-group">
                       <input class="form-control" type="password" id="password" name="password2" placeholder="Re-enter Password">
                   </div>
               <br/>
                   <div class="form-group text-center">
                       <button class="btn btn-default btn-lg text-right" type="button" onclick=window.location.href="Home.jsp">Back</button>
                       <button class="btn btn-default btn-lg text-right" type="submit" >ok</button>
                     
                        
                       
                       </div>
               
           </fieldset>
       </form>
         
         
         
                 
    </body> 
</html> 
