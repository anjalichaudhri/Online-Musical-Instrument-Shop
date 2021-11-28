<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
<% int uid=Integer.parseInt(session.getAttribute("userId").toString());%>
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Musical Instrument Store
					</h2>

					<div class="left-menu">
						<a  href="std-page.jsp?pgprt=0"><h2>Profile</h2></a>
						
                                                <a class="active" href="std-page.jsp?pgprt=1"><h2>Products</h2></a>
						<a href="std-page.jsp?pgprt=2&uid=<%= uid %>"><h2>View Cart</h2></a>
                                                <a href="std-page.jsp?pgprt=3"><h2>Feedback</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
            <div class="content-area" >
                            <div class="panel form-style-6" style="min-width: 300px;max-width: 390px;float: left">
            <form action="std-page.jsp">
                <div class="title">Show All Products for</div>
                <br><br>
                <label>Select Category</label>
                <input type="hidden" name="pgprt" value="4">
                <select name="category" class="text">
        <% 
            //ArrayList list1=pDAO.getAllGift();
            
            //for(int i=0;i<list1.size();i=i+6){
        
        try
    {
        Connection con;
    Statement stmt;
    String sql="select distinct category from gift";
    Class.forName("com.mysql.jdbc.Driver");
    con= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
   stmt= con.createStatement();
   ResultSet rs = stmt.executeQuery(sql);
   while(rs.next())
   {
       %>
      <option value="<%=rs.getString("category")%>"><%=rs.getString("category")%></option>
       <%
   }
   
    }
    catch(Exception e)
    {
        
    }
        
       %> 
        
        
           
           
            </select>
            <input type="submit" value="Show" class="form-button">
            </form>
                            </div>
        
       
                        </div>