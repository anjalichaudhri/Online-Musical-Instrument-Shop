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
    
    int bid = Integer.parseInt(request.getParameter("bookingid"));
    String status = request.getParameter("status");
    
    
    
    
     try
    {
        Connection con=null;
    Statement stmt=null;
    String sql="update booking set status='"+status+"' where bookingid="+bid;
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
   stmt= con.createStatement();
   int n = stmt.executeUpdate(sql);
   //out.print();
   response.sendRedirect("adm-page.jsp?pgprt=3");
    }
    catch(Exception e)
    {
        out.print("Hello");
    }
            
    
    
    
    
    
   

%>