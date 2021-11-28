
<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //String id = request.getParameter();
    
    String id = request.getParameter("category");
    try
    {
        Connection con;
    Statement stmt;
    String sql="select image from gift where category="+id;
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
   stmt= con.createStatement();
   ResultSet rs = stmt.executeQuery(sql);
   if(rs.next())
   {
      Blob blob= rs.getBlob("image");
        byte byteArray[] =  blob.getBytes(1,(int)blob.length());
        response.setContentType("image/gif");
        OutputStream os = response.getOutputStream();
        os.write(byteArray);
        os.flush();
         os.close(); 
   }
   else
   {
       
   }
    }
    catch(Exception e)
    {
        
    }
    %>