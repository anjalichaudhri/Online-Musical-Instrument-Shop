<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Musical Instrument Store
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>
						<a href="adm-page.jsp?pgprt=2"><h2>Products</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Booking</h2></a>
						<a  href="adm-page.jsp?pgprt=1"><h2>Accounts</h2></a>
                                                <a class="active" href="adm-page.jsp?pgprt=4"><h2>Feedback</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="inner" style="margin-top: 50px">
                                <div class="title" style="margin-top: -30px">List of All Feedbacks</div>
       
                                <br>
                                <br>
                                <br/>
                                
           <br>
           
           
                       <table id="one-column-emphasis" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
            <th scope="col">ID</th>
        	<th scope="col">Name</th>
                
            <th scope="col">Contact</th>
            <th scope="col">Email ID</th>
            <th scope="col">Date</th>
            <th scope="col">Message</th>
            
        </tr>
    </thead>
    <tbody>
           <%
              try
    {
        
        Connection con=null;
    ResultSet rs = null;
    
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
   
   
   
   String sql="select * from feedback";
            Statement stmt=con.createStatement();
            
           rs =  stmt.executeQuery(sql);
            while(rs.next())
            {
                %>
                
                <tr>
                    <td><%=rs.getString("feedbackid") %></td>
        	<td><%=rs.getString("name") %></td>
            <td><%=rs.getString("mobileno") %></td>
            <td><%=rs.getString("email") %></td>
            <td><%=rs.getString("date") %></td>
            <td><%=rs.getString("ymsg") %></td>
            <td><a href="feedbackdelete.jsp?id=<%=rs.getString("id") %>" 
                  onclick="return confirm('Are you sure you want to delete this ?');">
                <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
                </a></td>
            
        </tr>
                
                
                <%
            }
   
   
    }
    catch(Exception e)
    {
        
    }
    %>
   
    	
         
               
               
               
               
                </tbody>
</table>
           
    
                            </div>
                        </div>
