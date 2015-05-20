

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class signing extends HttpServlet {

     public Statement stmt;
    public Connection conn;
    public ResultSet rst;
    public String src,query;
    public String id,dbname="homepage";
    public List lst=new ArrayList();
    public List namelist=new ArrayList();
    DatabaseConnection dbconn;
    public static boolean sign=false;
    Cookie firstName,lastName;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        /*INSERT INTO USER(  `Fname` ,  `Lname` ,  `Email` ,  `Phone` ,  `Passs` ) VALUES ("pp",  "kp",  "ppkp@gmail.com",  "1234567890",  "12345");*/
        String Fname=request.getParameter("Fname");
        String Lname=request.getParameter("Lname");
        String Email=request.getParameter("Email");
        String Phone=request.getParameter("Phone");
        String Pass=request.getParameter("Pass");
        //Cookie cook[]=request.getCookies();
         //firstName = new Cookie("first_name",Fname);
         //lastName = new Cookie("last_name",Lname);
            //Cookie dam;
        
        System.out.println("Email.."+Email);
        try{ 
          
         query="INSERT INTO USER(Fname,Lname,Email,Phone,Passs) VALUES ('"+Fname+"','"+Lname+"','"+Email+"','"+Phone+"','"+Pass+"');";
        dbconn=new DatabaseConnection();
        
        conn=dbconn.setConnection(dbname);
        
          sign= dbconn.Insert(query,conn);
         if(sign){ 
            
             System.out.println("Signed....");
            //response.addCookie(firstName);
            //response.addCookie(lastName);
             //  request.setAttribute("cooked","true");\
         }
      
               
      }   catch(Exception e){
          System.out.println("heee");
            RequestDispatcher rd=request.getRequestDispatcher("/error.jsp");
             rd.forward(request, response);
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
