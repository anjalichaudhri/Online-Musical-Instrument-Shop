
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style-backend.css">
</head>
<body style = "background-image: url(bg1.jpg); background-size : 100%">
	<div class="top-area">
		<center><h2>Customer Panel</h2></center> <a href="logoutcontroller.jsp?page=logout" class="button" style="float: right;background:crimson;color:white">Logout</a>
	</div>
    
    <%
           if(session.getAttribute("userStatus")!=null){
           if(session.getAttribute("userStatus").equals("1")){
               int uid=Integer.parseInt(session.getAttribute("userId").toString());
              
            %>
            	
            <div class="menu">
            <a href="std-page.jsp?pgprt=0" class="button">profile</a>
            <a class="button" href="std-page.jsp?pgprt=1">Product</a>
            <a class="button" href="std-page.jsp?pgprt=2&uid=<%= uid %>">View Cart</a>
             <a href="std-page.jsp?pgprt=3"><h2>Feedback</h2></a>
            <a href="controller.jsp?page=logout" class="button" style="float: right;background:crimson;color:white">Logout</a>
            </div>
            <% 
            //pgpart = pagepart, exams=1,results=2 and profile is default
            if(request.getParameter("pgprt").equals("1")){
                
            %>
            
            <jsp:include page="giftselect.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="viewcart.jsp"/>
                
                <%
                
            }
            
            else if(request.getParameter("pgprt").equals("3")){// if( 4 == 4 )
                %>
            
                <jsp:include page="feedback.jsp"/>
            <%
            }
            
            
            
            else if(request.getParameter("pgprt").equals("4")){// if( 4 == 4 )
                %>
            
                <jsp:include page="gift1.jsp"/>
            <%
            }
            else if(request.getParameter("pgprt").equals("5")){// if( 4 == 4 )
                %>
            
                <jsp:include page="booking.jsp"/>
            <%
            }
            else{
                %>
            
                <jsp:include page="profile.jsp"/>
            
            <%
            }
            %>
            
            <%
           }else response.sendRedirect("login.jsp");
            }else response.sendRedirect("login.jsp");
            
          
           %>
            
           </body>
</html>
            
