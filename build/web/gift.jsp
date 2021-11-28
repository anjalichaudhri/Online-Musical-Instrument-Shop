
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
						<a class="active" href="adm-page.jsp?pgprt=2"><h2>Products</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Booking</h2></a>
                                                <a href="adm-page.jsp?pgprt=1"><h2>Accounts</h2></a>
						<a href="adm-page.jsp?pgprt=4"><h2>Feedback</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            
                            <div class="panel" style="max-width: 550px;float:right">
                                <div class="title">
                                   All Products
                                </div>
                                <table id="one-column-emphasis" style="min-width: 400px;margin: 5px; margin-top: 35px" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	<th scope="col">Products</th>
                
            <th scope="col">Product Name</th>
            <th scope="col">Image</th>
            <th scope="col">Category</th>
                
            <th scope="col">Price</th>
         <th scope="col">Description</th>
        </tr>
    </thead>
    
                                       
        <% 
            ArrayList list=pDAO.getAllGift();
            for(int i=0;i<list.size();i=i+6){
        %>
        <tr>
        <td><%=list.get(i)%></td>
        <td><%=list.get(i+1)%></td>
        <td><img src = "mygift.jsp?id=<%=list.get(i)%>" height = 100 width = 100></td>
         <!--<td><%=list.get(i+2)%></td>-->
         
          <td><%=list.get(i+3)%></td>
           <td><%=list.get(i+4)%></td>
            <td><%=list.get(i+5)%></td>
        
        <td ><a  href="controller.jsp?page=gift&operation=del&id=<%=list.get(i)%>" 
                onclick="return confirm('Are you sure you want to delete this ?');" class="del">
                <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
            </a></td>
    </tr>
            <%
            }
            %>
            </table>
        </div>
        <div  class="panel form-style-6" style="max-width: 450px" >
           <div class="title">
                                   Add New Product
                                </div>
            <center>
               <form action="UploadGiftImage" enctype="multipart/form-data" method="post">
                   <br>
                   <table >
                       <tr>
                           <td><label>Product Name</label></td>
                           <td> <input type="text" name="name" class="text" placeholder="Product Name"  style="width: 230px;"></td>
                       </tr>
                       <tr>
                           <td><label>Image</label></td>
                           <td><input type="file" name="file" style="width: 230px;" ></td>
                       </tr>
                       <tr>
                           <td><label>Category</label></td>
                           <td>
                                <!--<input type="text" name="category" class="text" placeholder="Category" style="width: 230px;" >-->
                                <select name="category">
                                    <option value="Clarinet">Clarinet</option>
                                    <option value="Cymbals">Cymbals</option>
                                    <option value="Drum">Drum</option>
                                    <option value="Frenchhorn">Frenchhorn</option>
                                    
                                     <option value="Guitar">Guitar</option>
                                    <option value="Harmoniam">Harmoniam</option>
                                    <option value="Harmonica">Harmonica</option>
                                    <option value="Maracas">Maracas</option>
                                    
                                    <option value="Tambourine">Tambourine</option>
                                    <option value="Triangle">Triangle</option>
                                    <option value="Trombone">Trombone</option>
                                    <option value="violin">violin</option>
                                    
                                    
                                    
                                    
                                     <option value="Mixture">xylophone</option>
                                    
                                    
                                   
                                    
                                </select>
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
                        <td colspan="2"><!--<input type="hidden" name="page" value="gift">
                    <input type="hidden" name="operation" value="addnew">-->
                       <center><input type="submit" class="form-button" value="Add" name="submit"></center></td>
                       </tr>
                   </table>

                </form>
            </center>
           
    </div>
     </div>
                       
