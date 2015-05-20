


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
 



public class DatabaseConnection {
    public Statement stmt;
    public Connection conn;
    public ResultSet rst;
   
    public DatabaseConnection(){
    }
    
    public Connection setConnection(String dbname){
        
        try {
             Class.forName("com.mysql.jdbc.Driver");
             
             conn=DriverManager.getConnection("jdbc:mysql://localhost/"+dbname,"root","wf420");
             
             stmt=conn.createStatement();}
        
        catch(Exception e){e.printStackTrace();}
    
    return conn;
    }
    
   public ResultSet getResult(String query,Connection conn){
        this.conn=conn;
        
        try{
            stmt=conn.createStatement();
            rst=stmt.executeQuery(query);
        }
        catch(Exception e){}
        return rst;
   }
   
    public boolean Insert(String query,Connection conn){
        this.conn=conn;
        
        try{
            stmt=conn.createStatement();
            stmt.executeUpdate(query);
        }
        catch(Exception e){}
        return true;
   }
    
}
