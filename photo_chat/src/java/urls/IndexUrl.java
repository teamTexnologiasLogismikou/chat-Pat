
package urls;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexUrl extends HttpServlet{
    protected void index(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
        rd1.forward(request,response);
    }
    
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            index(request, response);
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            index(request, response);
        }
}


