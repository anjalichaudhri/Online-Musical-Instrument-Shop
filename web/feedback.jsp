<%@ page import="java.sql.*"%>

<%@ page import="java.util.Date"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="java.io.*"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Musical Instrument Store
					</h2>
                <%
                    Date date = new Date();
               int uid=Integer.parseInt(session.getAttribute("userId").toString());
                String name="";
      String email="";
      String contact="";
      
              
    //String id = request.getParameter();
     
              
              
    
    try
    {
        Connection con;
    Statement stmt;
    String sql="select user_name,email,contact_no from users where user_id="+uid;
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
   stmt= con.createStatement();
   ResultSet rs = stmt.executeQuery(sql);
   while(rs.next())
   {
       name = rs.getString("user_name");
       email = rs.getString("email");
       contact = rs.getString("contact_no");
   }
   
    }
    catch(Exception e)
    {
        
    }
    %>
               
               
					<div class="left-menu">
						<a class="active" href="std-page.jsp?pgprt=0"><h2>Profile</h2></a>
						<a href="std-page.jsp?pgprt=1"><h2>Product</h2></a>
						<a href="std-page.jsp?pgprt=2&uid=<%= uid %>"><h2>View Cart</h2></a>
                                                <a href="std-page.jsp?pgprt=3"><h2>Feedback</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            
                           
        <div  class="panel form-style-6" style="max-width: 450px" >
           <div class="title">
                                   Feedback
                                </div>
            <center>
               <form action="myfeedback.jsp" enctype="multipart/form-data" method="get">
                   <br>
                   <table >
                       <tr>
                           <td><label>Name</label></td>
                           <td> <input type="text" name="name" class="text" placeholder="Name" value="<%= name %>"  style="width: 230px;"></td>
                       </tr>
                       <tr>
                           <td><label>Mobile No.</label></td>
                           <td><input type="text" name="mobileno" value="<%= contact %>" style="width: 230px;" ></td>
                       </tr>
                       <tr>
                           <td><label>Email Id</label></td>
                           <td>
                                <input type="text" name="emailid" value="<%= email %>" class="text" placeholder="Email ID" style="width: 230px;" >
                           </td>
                           
                       </tr>
                        <tr>
                           <td><label>Date</label></td>
                           <td>
 <%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
    <input type="date" name="date" class="text" value="<%= df.format(new java.util.Date())%>" style="width: 230px;" readonly>
                           </td>
                           
                       </tr>
                       
                        <tr>
                           <td><label>Message</label></td>
                           <td>
                               <textarea name="message" class="text" placeholder="Message" style="width: 230px;" ></textarea>
                           </td>
                           
                       </tr>
                       <tr>
                        <td colspan="2"><!--<input type="hidden" name="page" value="gift">
                    <input type="hidden" name="operation" value="addnew">-->
                       <center><input type="submit" class="form-button" value="Submit" name="submit"></center></td>
                       </tr>
                   </table>
                       <% 
                           // String s = "";
                         //  if(request.getParameter("success").equals("1"))
                           //{
                             
                           //s = "Feedback Sent Successfully";
                           
                          // }
                          // else
                          // {
                            
                           // s = "Feedback Not Sent";
                            
                          // }
                           %>    
                           
                           
                </form>
            </center>
           
    </div>
     </div>
                       
