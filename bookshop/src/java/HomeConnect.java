

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


public class HomeConnect extends HttpServlet {
   
    public Statement stmt;
    public Connection conn;
    public ResultSet rst;
    public String src,query;
    public String dbname="homepage";
    public List lst=new ArrayList();
    public DatabaseConnection dbconn;
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        System.out.println("hai");
      try{ 
          
         query="select imgname from img_name;";
        dbconn=new DatabaseConnection();
        
        conn=dbconn.setConnection(dbname);
        System.out.println("hai");
        rst=dbconn.getResult(query,conn);
        
        while(rst.next()){
           lst.add(rst.getString("imgname"));
          }
        rst.close();
      }   catch(Exception e){
          System.out.println("heee");
            RequestDispatcher rd=request.getRequestDispatcher("/error.jsp");
             rd.forward(request, response);
      }
      
      finally{
      request.setAttribute("lst",lst);
      RequestDispatcher rd=request.getRequestDispatcher("/MyHome.jsp");
      rd.forward(request, response);
      
            lst.clear();
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
