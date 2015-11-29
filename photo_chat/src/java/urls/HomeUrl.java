
package urls;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HomeUrl extends HttpServlet{
    protected void home(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        HttpSession s = request.getSession();
        PrintWriter pw = response.getWriter();
        if(s.getAttribute("username") == null){
            pw.println("Δέν έχετε δικαίωμα πρόσβασης");
            pw.println("<a href='index'>Συνδεθείτε</a>");
        }else{
            RequestDispatcher rd1 = request.getRequestDispatcher("views/home.jsp");
            rd1.forward(request,response);
        }
    }
    
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            home(request, response);
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            home(request, response);
        }
}


