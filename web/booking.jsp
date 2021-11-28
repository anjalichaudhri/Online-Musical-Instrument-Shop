
<%@page import="myPackage.classes.User"%>
<%@page import="myPackage.classes.Gift"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<script>
    function calc()
    {
        
     var quantity1 = document.getElementById("quantity").value;
     
     var price1 = document.getElementById("sprice").value;
     var totalprice = parseInt(quantity1)*parseInt(price1);
     
     document.getElementById("total").value = totalprice;
    }
</script>
<%
           User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
           if(user.getType().endsWith("student")){
        %>
        
        <%
               
               Gift gift=pDAO.getGiftById(request.getParameter("id"));
            
       
               int uid=Integer.parseInt(session.getAttribute("userId").toString());
           
        %>
         <!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Musical Instrument Store
					</h2>

					<div class="left-menu">
						
						<a href="std-page.jsp?pgprt=0"><h2>Profile</h2></a>
						<a href="std-page.jsp?pgprt=1"><h2>Product</h2></a>
						<a href="std-page.jsp?pgprt=2&uid=<%= uid %>"><h2>View Cart</h2></a>
                                                <a href="std-page.jsp?pgprt=3"><h2>Feedback</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="panel" style="float: left;max-width: 600px">
        
                                
        
           
           <div class="title">Profile</div>
           <div class="profile ">
               <form action="controller.jsp">
                        <input type="hidden" name="page" value="booking"> 
               <h2><span class="tag">Your Name</span><input type="text" value="<%=user.getFirstName()%>" name = "fname"><br/>
               <span class="tag">Email</span><input type="text" value="<%=user.getEmail() %>" name="email"><br/>
               <span class="tag">Contact No</span><input type="text" value="<%=user.getContact()%>" name="contact"><br/>
               <span class="tag">City</span><input type="text" value="<%=user.getCity() %>" name="city"><br/>
               <span class="tag">Address</span><input type="text" value="<%=user.getAddress() %>" name="address"></h2>
               <span class="tag">Product Id</span><input type="text" value="<%=gift.getid() %>" name="giftid"><br/>
               <span class="tag">Price</span><input type="text" value="<%=gift.getprice() %>" name="sprice" id="sprice"><br/>
               <span class="tag">Quantity</span><span class="val"><input type = "text" name = "quantity" id = "quantity" onkeyup="calc()"></span><br/>
               <span class="tag">Total Amount</span><span class="val"><input type="text" value="0" name="total" id="total"></span></h2>
               <span class="add-btn"><input type = submit value="Confirm Booking"></span>            
               </form>

           </div>
              
               <br/>
               
             
           
               
               
                
               <%
           }
          
          
           %>
    
        </div>
    </div>