<%-- 
    Document   : controller
    Created on : Jan 21, 2019, 2:13:40 PM
    Author     : win 8.1
--%>
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
    
    if(request.getParameter("page").toString().equals("logout")){
    session.setAttribute("userStatus","0");
    session.invalidate();
    //session.removeAttribute("examId");
    //session.removeAttribute("examStarted");
    response.sendRedirect("index.jsp");
}
%>