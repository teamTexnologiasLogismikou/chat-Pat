
package controllers;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logout extends HttpServlet{
    protected void doLogout(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    
    final HttpSession session = request.getSession(false);
    if (session != null){
        session.invalidate();
    }

    response.sendRedirect("index");
    }
    @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            doLogout(request, response);
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            doLogout(request, response);
        }
}
