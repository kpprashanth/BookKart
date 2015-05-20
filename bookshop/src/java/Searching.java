

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Searching extends HttpServlet {

    public Statement stmt;
    public Connection conn;
    public ResultSet rst;
    public String src,query;
    public String id,dbname="homepage";
    public List lst=new ArrayList();
    public List namelist=new ArrayList();
    DatabaseConnection dbconn;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
      PrintWriter out = response.getWriter();
        
      try{ 
          id=request.getParameter("value");
          System.out.println("Th key word id: "+id);
         lst.add(id);
         namelist.add("search");
      }   catch(Exception e){
          System.out.println("heee");
            RequestDispatcher rd=request.getRequestDispatcher("/error.jsp");
             rd.forward(request, response);
      }
      
      finally{
          System.out.println("");
      request.setAttribute("lst",lst);
      request.setAttribute("checkboxname",namelist);
      RequestDispatcher rd=request.getRequestDispatcher("/trial.jsp");
      rd.forward(request, response);
      
            lst.clear();
            namelist.clear();
            out.close();
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

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
