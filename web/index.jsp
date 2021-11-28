<%-- 
    Document   : index
    Created on : Jan 20, 2019, 4:39:03 PM
    Author     : win 8.1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
    <head>
        
        <meta charset="UTF-8">
	<meta http-equiv="X-UA-compatible" content = "IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel ="stylesheet" type ="text/css" href="bootstrap.min.css">
        <script src="jquery-3.3.1.min.js"></script>
        <script type = text/javascript src="bootstrap.min.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        
        <title>Online Musical Instrument Store</title>
        <style>
           
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 400px;
      
      
      
   
 
        </style>
    </head>
    <body style = "background-color: white">
        <!-- Start Nagigation -->
  <nav class="navbar navbar-expand-sm navbar-dark pl-5 fixed-top" style = "background-color : #B9105E">
    <a href="index.jsp" class="navbar-brand">Online Musical Instrument Store</a>
    <span class="navbar-text">Cheap And Best</span>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#myMenu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="myMenu">
      <ul class="navbar-nav pl-5 custom-nav">
        <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="login.jsp" class="nav-link">Login</a></li>
        <li class="nav-item"><a href="team.html" class="nav-link">Team</a></li>
        <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
      </ul>
    </div>
  </nav> <!-- End Navigation -->
  
  
  
  <div id="demo" class="carousel slide" data-ride="carousel" style = "margin-top : 50px">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
    <li data-target="#demo" data-slide-to="4"></li>
   
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
     
    <div class="carousel-item active">
      <img src="myimages/1.jpg" alt="Los Angeles" width="1100" style = "height:500px">
    </div>
    <div class="carousel-item">
      <img src="myimages/2.jpg" alt="Chicago" width="1100" style = "height:500px">
    </div>
   
      <div class="carousel-item">
      <img src="myimages/4.jpg" alt="New York" width="1100" style = "height:500px">
    </div>
      
  
   </div>
      <div class="carousel-item">
      <img src="myimages/7.jpg" alt="New York" width="1100" style = "height:500px">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
  
  
  <div class="container" style = "margin-top : 60px">
        <h1 class = text-center style = "font-family : Monotype Corsiva ; color : blueviolet">Products We Deal In</h1>
        
        <center><img src="myimages/line1.jpg" style ="height:20px ; width : 500px" ></center>
        
      <div class = row>
         
          <div class = col-sm-2>
  
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Clarinet</h2>          
  <a href = "giftbycategory.jsp?category=Clarinet"><img src="myimages/a1.jpg" class="img-thumbnail" alt="Clarinet" style = "width:304px; height : 236px"> </a>
      </div>
          
          
          <div class = col-sm-2>
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Cymbals</h2>          
  <a href = "giftbycategory.jsp?category=Cymbals"><img src="myimages/a2.jpg" class="img-thumbnail" alt="Cymbals" style = "width:304px; height : 236px"> </a>
      </div>
          
                  <div class = col-sm-2>
  <h3 class = text-center style = "font-family : Monotype Corsiva ; color : red">Drum</h3>          
  <a href = "giftbycategory.jsp?category=Drum"><img src="myimages/a3.jpg" class="img-thumbnail" alt="drum" style = "width:304px; height : 236px"> </a>
      </div>
        
          <div class = col-sm-2>
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Frenchhorn</h2>          
  <a href = "giftbycategory.jsp?category=Frenchhorn"><img src="myimages/a4.jpg" class="img-thumbnail" alt="Frenchhorn" style = "width:304px; height : 236px"> </a>
      </div>
         
        <div class = col-sm-2>
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Guitar</h2>          
  <a href = "giftbycategory.jsp?category=Guitar"><img src="myimages/a5.jpg" class="img-thumbnail" alt="Guitar" style = "width:304px; height : 236px"> </a>
      </div>  
        
          <div class = col-sm-2>
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Harmoniam</h2>          
  <a href = "giftbycategory.jsp?category=Harmoniam"><img src="myimages/a6.jpg" class="img-thumbnail" alt="Harmoniam" style = "width:304px; height : 236px"> </a>
      </div>  
          
      </div>
           
</div>
  
  
  
   <div class="container" style = "margin-top : 60px">
        
        
      <div class = row>
         
           <div class = col-sm-2>
  
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Harmonica</h2>          
  <a href = "giftbycategory.jsp?category=Harmonica"><img src="myimages/a7.jpg" class="img-thumbnail" alt="Harmonica" style = "width:304px; height : 236px"> </a>
      </div>
          
          
          <div class = col-sm-2>
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Maracas</h2>          
  <a href = "giftbycategory.jsp?category=Maracas"><img src="myimages/a8.jpg" class="img-thumbnail" alt="Maracas" style = "width:304px; height : 236px"> </a>
      </div>
          
                  <div class = col-sm-2>
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Tambourine</h2>          
  <a href = "giftbycategory.jsp?category=Tambourine"><img src="myimages/a9.jpg" class="img-thumbnail" alt="Tambourine" style = "width:304px; height : 236px"> </a>
      </div>
        
          <div class = col-sm-2>
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Triangle</h2>          
  <a href = "giftbycategory.jsp?category=Triangle"><img src="myimages/a13.jpg" class="img-thumbnail" alt="Triangle" style = "width:304px; height : 236px"> </a>
      </div>
         
        <div class = col-sm-2>
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">Trombone</h2>          
  <a href = "giftbycategory.jsp?category=Trombone"><img src="myimages/a10.jpg" class="img-thumbnail" alt="Trombone" style = "width:304px; height : 236px"> </a>
      </div>  
        
          <div class = col-sm-2>
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">violin</h2>          
  <a href = "giftbycategory.jsp?category=violin"><img src="myimages/a11.jpg" class="img-thumbnail" alt="violin" style = "width:304px; height : 236px"> </a>
      </div>  
          
      </div>
           
</div>
  
  
   <div class="container" style = "margin-top : 60px">
        
      <div class = row>
         
           <div class = col-sm-2>
  
  <h2 class = text-center style = "font-family : Monotype Corsiva ; color : red">xylophone</h2>          
  <a href = "giftbycategory.jsp?category=xylophone"><img src="myimages/a12.jpg" class="img-thumbnail" alt="xylophone" style = "width:304px; height : 236px"> </a>
      </div>
                 
          
      </div>
           
</div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
          
   
  
  
  
  
  
  
  
  
  
  
  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    </body>
</html>
