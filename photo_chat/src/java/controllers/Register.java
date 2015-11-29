
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;
public class Register extends HttpServlet{
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {
       
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        try{
            User user = new User();
            user.setLastName(request.getParameter("lastName"));
            user.setFirstName(request.getParameter("firstName"));
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.register();
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
            } finally {pw.close();}
        }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
    }
}
