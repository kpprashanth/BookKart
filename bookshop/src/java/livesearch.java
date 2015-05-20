

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
@WebServlet(urlPatterns = {"/livesearch"})
public class livesearch extends HttpServlet {

    
   public Statement stmt;
    public Connection conn;
    public ResultSet rst;
    public String src,query,id;
    public String dbname="homepage";
    public List lst=new ArrayList();
    public DatabaseConnection dbconn;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


    @Override
     protected void doGet(HttpServletRequest request,   HttpServletResponse response) throws ServletException, IOException {
String country=request.getParameter("countryname");
System.out.println("Connecting.."+country);
           int key=1;
           Map<String, String> ind = new LinkedHashMap<String, String>();
            try{ 
         
         query="select imgname from img_name where imgname like'%"+country+"%';";
        dbconn=new DatabaseConnection();
        
        conn=dbconn.setConnection(dbname);
        
        rst=dbconn.getResult(query,conn);
       System.out.println("Connecting..");
        while(rst.next()){
            id=""+key;
           ind.put(id, rst.getString("imgname"));
           key++;
          }
        
        }
        catch(Exception e){e.printStackTrace();}

   

   
   Map<String, String> us = new LinkedHashMap<String, String>();
   us.put("1", "Washington");
   us.put("2", "California");
   us.put("3", "Florida");
   us.put("4", "New York");
   String json = null ;
   json= new Gson().toJson(ind);
   response.setContentType("application/json");
   response.setCharacterEncoding("UTF-8");
   response.getWriter().write(json);     
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
