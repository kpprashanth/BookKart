

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
import com.google.gson.Gson;



public class sortServlet extends HttpServlet {

  public Statement stmt;
    public Connection conn;
    public ResultSet rst;
    int count=0;
    public String src,query,check1,check2,check3,dbname="sam";
    public ArrayList lst=new ArrayList();
    public ArrayList namelist=new ArrayList();
    DatabaseConnection dbconn;
    StringBuffer returndata=null;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          count =Integer.parseInt(request.getParameter("count"));
         System.out.println("sizewwwwww"+count);
         String imgvalue="imgvalue";
          String id[]=new String[count];
          
          int cnt=0;
          if(count>0){
          for(int i=1;i<4;i++){
              System.out.println(request.getParameter(imgvalue+i));
             if(request.getParameter(imgvalue+i).length()!=0){
                 id[cnt]= request.getParameter(imgvalue+i);cnt++;
             }
          }}
          System.out.println("sizewwwnnn"+count);
        //  id[0]=request.getParameter("imgvalue1");
         // id[1]=request.getParameter("imgvalue2");
          //id[2]=request.getParameter("imgvalue3");
          //System.out.println("sizewwwwww");
          
          
          for(int i=0;i<id.length;i++){
              namelist.add(id[i]);System.out.println("img are"+i+": "+id[i]);System.out.println("size"+id.length);}
          
           
         try{ 
          
          for(int i=0;i<id.length;i++){
         query="select "+id[i]+" from imagesrc;";
        dbconn=new DatabaseConnection();
        
        conn=dbconn.setConnection(dbname);
        
        rst=dbconn.getResult(query,conn);
       
        while(rst.next()){
           lst.add(rst.getString(id[i]));
           // System.out.println("hai in sortServlet...");
          }
           rst.close();
          }  
        
    }  catch(Exception e){
          System.out.println("heee in sortServlet...");
            RequestDispatcher rd=request.getRequestDispatcher("/error.jsp");
             rd.forward(request, response);
      }
      
      finally{
         
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
