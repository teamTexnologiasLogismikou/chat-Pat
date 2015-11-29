 <!DOCTYPE html>
<html> 
<head>
   <meta charset="utf-8" />
   <title>Delete Account</title>
   <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
   <link href='http://fonts.googleapis.com/css?family=Roboto:300' rel='stylesheet' type='text/css'>
   <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   <style>
       body{
           font:12px/15px Roboto, "Helvetica Neue", Helvetica, sans-serif;
       }
       select,
       input,
       .btn {
           font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
       }
       #wrapper{
           margin:0 auto;
       }
       .main-form {
           width: 360px;
           min-height: 360px;
           background: #fff;
           border-radius: 60px;
           margin:0px auto 20px;
           padding: 20px;
       }
       .form-logo {
           font-size: 100px;
           color: #708090;
       }
   </style>
</head>
<body>
<div id="wrapper">
   <div class="main-form">
       <form action="Remove_Account.jsp" method="POST">
           <fieldset>
               <div class="text-center">
                   <span class="form-logo glyphicon glyphicon-user"></span>
               </div>
               <div class="form-body">
                   <h1 class="form-title text-center">Delete Account</h1>
                   <div class="form-group">
                       <input class="form-control" type="email" id="email" name="email" placeholder="Email">
                   </div>
                   <div class="form-group">
                       <input class="form-control" type="password" id="password" name="password" placeholder="Password">
                   </div>
                   <div class="form-group">
                       <input class="form-control" type="password" id="password" name="password2" placeholder="Re-enter Password">
                   </div>
                   <div class="form-group text-center">
                       <button class="btn btn-default btn-lg text-right" type="button" onclick=window.location.href="Settings.jsp">Back</button>
                       <button class="btn btn-default btn-lg" style="margin-left: 86px" type="submit">Delete Account</button>
                       </div>
               </div>
           </fieldset>
       </form>
   </div>
</div>
</body>
</html>