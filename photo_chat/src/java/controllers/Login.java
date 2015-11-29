 package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import models.User;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter pw = response.getWriter();
            try {
                if(User.LoginUser(request.getParameter("username"),request.getParameter("password"))){
                    User user = new User();
                    user.setUsername(String.valueOf(request.getParameter("username")));
                    user.getUser();

                    HttpSession sessionUser = request.getSession();
                    sessionUser.setAttribute("username",user.getUsername());
                    sessionUser.setAttribute("uid", user.getUid());
                    RequestDispatcher rd1 = request.getRequestDispatcher("/home");
                    rd1.forward(request,response);     
                }  
                else{
                    pw.println("Wrong Username Or Password!!! ");
                    pw.println("<a href=\"index.jsp\">Please try again");
                }    
            } finally {
                pw.close();
               }
        }
        
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
        }
        

}   