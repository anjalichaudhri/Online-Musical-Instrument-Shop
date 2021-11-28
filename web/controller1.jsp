<%-- 
    Document   : controller1
    Created on : Jan 27, 2019, 11:09:29 PM
    Author     : win 8.1
--%>
<%@page import="java.sql.*"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
String fileName;
%>
<%
    
  String name = request.getParameter("name");
         //String image =request.getParameter("image");
            String category = request.getParameter("category");
            String price = request.getParameter("price");
            String description = request.getParameter("description");
            out.print(request.getAttribute("name")); 
    //out.print(name); 
    //out.print(category);
    //out.print(price);
    
    Connection con;
    Statement stmt;
File file = null;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   
   
   //String filePath = "F:/GiftShopJava/web/uploadgift";
   String filePath = "F:/GiftShopJava/web/uploadgift";

   // Verify the content type
   String contentType = request.getContentType();
   out.print(contentType);
   
   if ((contentType.indexOf("multipart/form-data") >= 0)) {
      out.print("It is a multipart data"); 
   }
     DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("c:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      
    
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         
         
         while (i.hasNext()){
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () ) {
               // Get the uploaded file parameters
               //String fieldName = fi.getFieldName();
                fileName = fi.getName();
               //boolean isInMemory = fi.isInMemory();
               //long sizeInBytes = fi.getSize();
            
               // Write the file
               /*if( fileName.lastIndexOf("\\") >= 0 ) {
                  file = new File( filePath + 
                  fileName.substring( fileName.lastIndexOf("\\"))) ;
               } else {
                  file = new File( filePath + 
                  fileName.substring(fileName.lastIndexOf("\\")+1)) ;
               }*/
               
               /*fi.write( file ) ;
               out.println("Uploaded Filename: " + filePath + 
               fileName + "<br>");*/
               
            fileName = name+(fileName.substring(fileName.indexOf("."))); 
              //out.println(fileName);
              //out.println(filePath);
              file = new File(filePath ,fileName);
              fi.write( file );
             // out.println("<script>alert("Uploaded")</script>);
              //out.println("Uploaded Filename: " + filePath + 
               //fileName + "<br>");
          //  }
      }
         //out.println("</body>");
        // out.println("</html>");
         //System.out.println("Upload");
    
 }
         //pDAO.addNewGift(request.getParameter("name"),request.getParameter("image"),
                //request.getParameter("category"), request.getParameter("price"), request.getParameter("description"));
       // response.sendRedirect("adm-page.jsp?pgprt=2");
         
            
                      
  %>
  
  <% 
         try
         {
             String sql="INSERT into gift(name,image,category,price,description) Values('"+name+"','"+fileName+"','"+category+"','"+price+"','"+description+"')";
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
   stmt= con.createStatement();
   stmt.executeLargeUpdate(sql);
         }
         catch(Exception ex)
         {
             
         }
   %>
               