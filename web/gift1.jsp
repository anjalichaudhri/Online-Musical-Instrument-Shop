
<%@page import="myPackage.classes.Gift"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Musical Instrument Store
					</h2>

					<div class="left-menu">
						<a  href="std-page.jsp?pgprt=0"><h2>Profile</h2></a>
						<a class="active" href="std-page.jsp?pgprt=2"><h2>Products</h2></a>
                                                <a href="std-page.jsp?pgprt=3"><h2>Booking</h2></a>
						<a href="std-page.jsp?pgprt=1"><h2>Feedback</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            
                            <div class="panel" style="max-width: 550px;">
                                <div class="title">
                                   All Products
                                </div>
                                <table id="one-column-emphasis" style="min-width: 400px;margin: 5px; margin-top: 35px" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	
                
            <th scope="col">Product Name</th>
            <th scope="col">Image</th>
            <th scope="col">Category</th>
                
            <th scope="col">Price</th>
         <th scope="col">Description</th>
        </tr>
    </thead>
    
                                       
        <% 
            if(request.getParameter("category")!=null){
               ArrayList list=pDAO.getGiftByCategory(request.getParameter("category"));
            
            for(int i=0;i<list.size();i++){
                Gift gift=(Gift)list.get(i);
           
        %>
        <tr>
       
        <td><%=gift.getname()%></td>
         <td><img src = "mygift.jsp?id=<%=gift.getid()%>" height = 100 width = 100></td>
          <td><%=gift.getcategory()%></td>
           <td><%=gift.getprice()%></td>
            <td><%=gift.getdescription()%></td>
        
  <td ><a  href="controller.jsp?page=gift&operation=book&id=<%=gift.getid()%>" 
                 class="del">
                <div class="delete-btn" style="max-width: 40px;font-size: 15px; padding: 3px">Book Now</div>
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
                       
