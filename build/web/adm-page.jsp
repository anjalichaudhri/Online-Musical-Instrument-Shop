
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
<head>
	<title>Online Musical Instrument Store</title>
	<link rel="stylesheet" type="text/css" href="style-backend.css">
         
</head>
<body style = "background-image: url(bg1.jpg); background-size : 100%">
	<div class="top-area">
		<center><h2>Admin Panel</h2></center> <a href="logoutcontroller.jsp?page=logout" class="button" style="float: right;background:crimson;color:white">Logout</a>
	</div>

        <%
            if(session.getAttribute("userStatus")!=null){
            if(session.getAttribute("userStatus").equals("1")){
            
            %>
            
            
            
            
            
            <% 
            //pgpart = pagepart, accounts=1,courses=2,questions=3 and profile is default
            if(request.getParameter("pgprt").equals("1")){
                
            %>
            
                <jsp:include page="accounts.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="gift.jsp"/>
                
                <%
                
            }else if(request.getParameter("pgprt").equals("3")){
                %>
            
                <jsp:include page="showbookings.jsp"/>
            <%
            }else if(request.getParameter("pgprt").equals("4")){// if( 4 == 4 )
                %>
            
                <jsp:include page="viewfeedback.jsp"/>
            <%
            }else{
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