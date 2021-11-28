<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalTime"%>
<%@page import="myPackage.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<%
    
   String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String country = request.getParameter("country");
    String subject = request.getParameter("subject");
    
    
     try
    {
        Connection con=null;
    Statement stmt=null;
    String sql="insert into contact(firstname,lastname,country,subject) values('"+firstname+"','"+lastname+"','"+country+"','"+subject+"')";
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
   stmt= con.createStatement();
   int n = stmt.executeUpdate(sql);
   //out.print();
   String success = "yes";
   response.sendRedirect("contact.jsp?status="+success);
    }
    catch(Exception e)
    {
        out.print("Hello");
    }
            
    
    
    
    
    
   

%>