<%@page import="myPackage.classes.Booking"%>
<%@page import="myPackage.classes.Gift"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Musical Instrument Store
					</h2>
                                        <%int uid=Integer.parseInt(session.getAttribute("userId").toString());%>
					<div class="left-menu">
						<a  href="std-page.jsp?pgprt=0"><h2>Profile</h2></a>
						<a href="std-page.jsp?pgprt=1"><h2>Products</h2></a>
                                                
                                                <a class="active" href="std-page.jsp?pgprt=2&uid=<%= uid %>"><h2>View Cart</h2></a>
						<a href="std-page.jsp?pgprt=3"><h2>Feedback</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            
                            <div class="panel" style="max-width: 550px;">
                                <div class="title">
                                   All My Bookings
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
        </tr>
    </thead>
    
                                       
        <% 
            if(request.getParameter("uid")!=null){
               ArrayList list=pDAO.getUserBooking(request.getParameter("uid"));
            
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
        
  <td ><a  href="controller.jsp?page=viewcart&operation=delbook&id=<%=booking.getBookingId()%>" 
                 class="del" onclick="return confirm('Are you sure you want to delete this ?');">
                <div class="delete-btn" style="max-width: 40px;font-size: 15px; padding: 3px">Cancel Booking</div>
            </a></td>
    </tr>
            <%
            }
            }%>
            </table>
        </div>
      <!--  <div  class="panel form-style-6" style="max-width: 450px" >
           <div class="title">
                                   Add New Gift
                                </div>
            <center>
               <form action="controller.jsp" enctype="multipart/form-data">
                   <br>
                   <table >
                       <tr>
                           <td><label>Gift Name</label></td>
                           <td> <input type="text" name="name" class="text" placeholder="Gift Name"  style="width: 230px;"></td>
                       </tr>
                       <tr>
                           <td><label>Image</label></td>
                           <td><input type="text" name="image" class="text"  style="width: 230px;" ></td>
                       </tr>
                       <tr>
                           <td><label>Category</label></td>
                           <td>
                                <input type="text" name="category" class="text" placeholder="Category" style="width: 230px;" >
                           </td>
                           
                       </tr>
                        <tr>
                           <td><label>Price</label></td>
                           <td>
                                <input type="text" name="price" class="text" placeholder="Price" style="width: 230px;" >
                           </td>
                           
                       </tr>
                       
                        <tr>
                           <td><label>Description</label></td>
                           <td>
                                <input type="text" name="description" class="text" placeholder="Description" style="width: 230px;" >
                           </td>
                           
                       </tr>
                       <tr>
                           <td colspan="2"><input type="hidden" name="page" value="gift">
                    <input type="hidden" name="operation" value="addnew">
                       <center><input type="submit" class="form-button" value="Add" name="submit"></center></td>
                       </tr>
                   </table>

                </form>
            </center>
           
    </div>-->
     </div>
                       
