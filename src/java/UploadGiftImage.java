/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author win 8.1
 */
@WebServlet(urlPatterns = {"/UploadGiftImage"})
@MultipartConfig(maxFileSize=16177216)//1.5mb
public class UploadGiftImage extends HttpServlet {
   Connection con;
    Statement stmt;
    PrintWriter out;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        //processRequest(request, response);
        int result = 0;
        Part part = request.getPart("file");
        if(part!=null)
        {
           try
           {
                Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
   //stmt= con.createStatement();
               String name=(String)request.getParameter("name");//will return value  
//String image=(String)request.getParameter("file");
String category=(String)request.getParameter("category");
String price=(String)request.getParameter("price");
String description=(String)request.getParameter("description");
               //InputStream is = part.getInputStream();
                //String sql="INSERT into gift(name,image,category,price,description) Values('"+name+"','"+is+"','"+category+"','"+price+"','"+description+"')";
     PreparedStatement ps = con.prepareStatement("INSERT into gift(name,image,category,price,description) values(?,?,?,?,?)");
			    InputStream is = part.getInputStream();
			   ps.setString(1, name);
                            ps.setBlob(2, is);
                            ps.setString(3, category);
                            ps.setString(4, price);
                            ps.setString(5, description);
			    result = ps.executeUpdate();           
                
                
   
   //result = stmt.executeUpdate(sql);
   if(result>0)
   {
       response.sendRedirect("adm-page.jsp?pgprt=2");
   }
           }
           catch(Exception e)
           {
               
           }
        }
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
