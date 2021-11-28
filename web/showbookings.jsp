<%@page import="myPackage.classes.Booking"%>
<%@page import="myPackage.classes.Gift"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<html>
<head>
  <title>Online Musical Instrument Store</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<!-- SIDEBAR -->
<body>
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Musical Instrument Store
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>
						<a href="adm-page.jsp?pgprt=2"><h2>Products</h2></a>
                                                <a class="active" href="adm-page.jsp?pgprt=3"><h2>Bookings</h2></a>
                                                <a href="adm-page.jsp?pgprt=1"><h2>Account</h2></a>
						<a href="adm-page.jsp?pgprt=4"><h2>Feedback</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
            <div class = container>
                <div class ="row">
                    <div class = col-sm-6 style = "margin-left : 200px">
			<div class="content-area">
                            
                            <div class="panel" style="max-width: 650px;">
                                <div class="title">
                                   All Bookings
                                </div>
                                <table id="one-column-emphasis" style="min-width: 400px;margin: 5px; margin-top: 35px" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	
                
            <th scope="col">Booking ID</th>
            <th scope="col">Booking Date</th>
            <th scope="col">Product ID</th>
                
            <th scope="col">Price</th>
         <th scope="col">Quantity</th>
         <th scope="col">Total Amount</th>
         <th scope="col">Status</th>
        </tr>
    </thead>
    
                                       
        <% 
            
               ArrayList list=pDAO.getAllBooking();
            
            for(int i=0;i<list.size();i++){
                Booking booking=(Booking)list.get(i);
           
        %>
        <tr>
       
        <td><%=booking.getBookingId()%></td>
         <td><%=booking.getDate()%></td>
          <td><%=booking.getGiftId()%></td>
           <td><%=booking.getPrice()%></td>
            <td><%=booking.getQuantity()%></td>
            <td><%=booking.getTotal()%></td>
        <td><%=booking.getStatus()%></td>
  <td ><a  href="controller.jsp?page=viewcart&operation=delbook&id=<%=booking.getBookingId()%>" 
                 class="del" onclick="return confirm('Are you sure you want to delete this ?');">
                <div class="delete-btn" style="max-width: 40px;font-size: 15px; padding: 3px">Cancel Booking</div>
            </a></td>
    </tr>
            <%
            }
            %>
            </table>
        </div>
                        
                    </div>
            <div class = col-sm-6 style = "margin-left : 550px ; margin-top : 150px">
       <div  class="panel form-style-6" style="max-width: 450px" >
           <div class="title">
                                   Update Status
                                </div>
            <center>
               <form action="statusUpdate.jsp" enctype="multipart/form-data">
                   <br>
                   <table >
                       <tr>
                           <td><label>Booking ID</label></td>
                           <td> <input type="text" name="bookingid" class="text" placeholder="Booking ID"  style="width: 150px;"></td>
                           
                       </tr>
                       <tr>
                           <td><label>Status</label></td>
                                   <td><select name = status style="width: 150px;">
                                           <option value = "Ordered Placed">Ordered Placed</option>
                                           <option value = "In Delivery">In Delivery</option>
                                           <option value = "Delivered">Delivered</option>
                               </select></td>
                           
                       </tr>
                      
                       
                        
                       
                        
                       <tr>
                           <td colspan="2"><input type="hidden" name="page" value="bookUpdate">
                    <input type="hidden" name="operation" value="addnew">
                       <center><input type="submit" class="form-button" value="Submit" name="submit" style = "width : 200px"></center></td>
                       </tr>
                   </table>

                </form>
            </center>
           
    </div>
            </div>
                </div>
            </div>
</body>
</html>
                       
