<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="models.User"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="css/bootstrap.css" >

        <script type="text/javascript" src="js/jquery.js" ></script>
        <script type="text/javascript" src="js/swf.js" ></script>
        <script type="text/javascript" src="js/script.js" ></script>
        <script type="text/javascript" src="scriptcam.js" ></script>
    </head>
    <body>
        <jsp:useBean id="user" scope="request" class="models.User"></jsp:useBean>
        <div class="container">    
            <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
                <div class="panel panel-info" >
                        <div class="panel-heading">
                            <div class="panel-title">Sign In</div>
                        </div>     

                        <div style="padding-top:30px" class="panel-body" >

                            <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                            <form id="loginform" class="form-horizontal" method="POST" action="login" role="form">

                                <div style="margin-bottom: 25px" class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input id="login-username" type="text" class="form-control" name="username" value="<jsp:getProperty name="user" property="username"/>" placeholder="username">                                        
                                        </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <input id="login-password" type="password" class="form-control" name="password" value="<jsp:getProperty name="user" property="password"/>" placeholder="password">
                                        </div>
                                    <div style="margin-top:10px" class="form-group">
                                        <!-- Button -->

                                        <div class="col-sm-12 controls">
                                            <input id="btn-login" type="submit" class="btn btn-success" value="Login">

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12 control">
                                            <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                                Don't have an account! 
                                            <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                                Sign Up Here
                                            </a>
                                            </div>
                                        </div>
                                    </div>    
                                </form>     
                            </div>                     
                        </div>  
            </div>


            <div id="signupbox" style="display:none; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="panel-title">Sign Up</div>
                                <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                            </div>  
                            <div class="panel-body" >
                                <form id="signupform" class="form-horizontal" action="register" method="POST" role="form">

                                    <div class="form-group">
                                        <label for="firstname" class="col-md-3 control-label">First Name</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" value="<jsp:getProperty name="user" property="firstName"/>" name="firstName" placeholder="First Name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="lastName" value="<jsp:getProperty name="user" property="lastName"/>" placeholder="Last Name">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="email" class="col-md-3 control-label">Username</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="username" value="<jsp:getProperty name="user" property="username"/>"  placeholder="Username">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="col-md-3 control-label">Password</label>
                                        <div class="col-md-9">
                                            <input type="password" class="form-control" name="password" value="<jsp:getProperty name="user" property="password"/>" placeholder="Password">
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <!-- Button -->                                        
                                        <div class="col-md-offset-3 col-md-9">
                                            <button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                                        </div>
                                    </div>
                                </form>
                             </div>
                        </div>
             </div> 
        </div>
    </body>
</html>
