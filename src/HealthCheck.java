import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

// Extend HttpServlet class
public class HealthCheck extends HttpServlet {
   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      // Set response content type
      response.setContentType("text/html");
	  response.setStatus(HttpServletResponse.SC_OK);
      PrintWriter out = response.getWriter();
      out.println("<h1>" + "OK" + "</h1>");
   }

   public void destroy() {
      // do nothing.
   }
}
