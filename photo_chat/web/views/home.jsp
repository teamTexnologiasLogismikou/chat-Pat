<%@page import="models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%  
    HttpSession s=request.getSession(false);  
    String username=(String)s.getAttribute("username");
    User u = new User();
    u.setUsername(username);
    u.getUser();            
%>
<!DOCTYPE html>
<html>
    <head>
        <title><% out.print(s.getAttribute("username")); %></title>
        <script src="js/jquery.js"></script>
        <script src="js/swf.js"></script>
        <script src="js/script.js"></script>
        <script src="views/scriptcam.js"></script>
		
	<link rel="stylesheet" href="css/bootstrap.css" />
    </head>
    <body>
        <%@ include file="/views/menu.html" %>
      <div class="container-fluid">
          
          <div class="col-md-12">
              <div class="col-md-3">
                  <div id="webcam"></div>
                  <h1>Κάνε Snap</h1>
                  <button class="btn btn-danger" id="btn2" onclick="base64_toimage()">Send</button>
              </div>
              <div class="col-md-6 bg-info">
                  <h1>Chat Area</h1>
                  <div class="col-md-12" id="chatArea">
                      <img id="image"/>
                  </div>
              </div>
                  
              </div>
          </div>
      </div>
    </body>
</html>

