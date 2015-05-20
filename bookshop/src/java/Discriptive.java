
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/Discriptive"})
public class Discriptive extends HttpServlet {
 
    public Statement stmt;
    public Connection conn;
    public ResultSet rst;
    public String src,query,id;
    public String dbname="homepage";
    public List lst=new ArrayList();
    public DatabaseConnection dbconn;
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        PrintWriter out = response.getWriter();
        id="img1";
        System.out.println("hai"+id);
      try{ 
          
         query="select imgname from img_name where img_id='"+id+"';";
        dbconn=new DatabaseConnection();
        
        conn=dbconn.setConnection(dbname);
        
        rst=dbconn.getResult(query,conn);
       
        while(rst.next()){
           src=rst.getString("imgname");
          }
        src=request.getParameter("id");
        System.out.println("hai----"+src);
        rst.close();
      }   catch(Exception e){
          System.out.println("heee");
            RequestDispatcher rd=request.getRequestDispatcher("/error.jsp");
             rd.forward(request, response);
      }
      
      finally{
      request.setAttribute("source",src);
      RequestDispatcher rd=request.getRequestDispatcher("/discription.jsp");
      rd.forward(request, response);
      
            lst.clear();
            out.close();
      }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
