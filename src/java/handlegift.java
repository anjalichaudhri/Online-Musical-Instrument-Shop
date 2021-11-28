/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet(urlPatterns = {"/handlegift"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2 , 
        maxFileSize = 1024 * 1024 * 10 , maxRequestSize = 1024*1024*50
        )


public class handlegift extends HttpServlet {

   Connection con;
    Statement stmt;
   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
       response.setContentType("text/html;charset = UTF-8");
 PrintWriter pw=response.getWriter();  
  
String name=(String)request.getParameter("name");//will return value  
//String image=(String)request.getParameter("file");
String category=(String)request.getParameter("category");
String price=(String)request.getParameter("price");
String description=(String)request.getParameter("description");

Part part = request.getPart("file");
String fileName = extractFileName(part);
String savePath = "F:\\uploadimage1\\" + File.separator+fileName;
File fileSaveDir = new File(savePath);

part.write(savePath + File.separator);



try
{
   String sql="INSERT into gift(name,image,category,price,description) Values('"+name+"','"+savePath+"','"+category+"','"+price+"','"+description+"')";
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
   stmt= con.createStatement();
   stmt.executeLargeUpdate(sql);
}
catch(Exception ex)
{
}




pw.close();  
    }

    
    private String extractFileName(Part part)
{
    String contentDisp = part.getHeader("content-disposition");
    String[] items = contentDisp.split(";");
    
    for(String s : items)
    {
        if(s.trim().startsWith("filename")) 
        {
            return s.substring(s.indexOf("=")+2,s.length()-1);
        }
    }
    return "";
}
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
