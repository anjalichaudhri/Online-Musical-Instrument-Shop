<%-- 
    Document   : controller
    Created on : Jan 21, 2019, 2:13:40 PM
    Author     : win 8.1
--%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalTime"%>
<%@page import="myPackage.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<%
if(request.getParameter("page").toString().equals("login")){
if(pDAO.loginValidate(request.getParameter("username").toString(), request.getParameter("password").toString())){
    session.setAttribute("userStatus", "1");
    session.setAttribute("userId",pDAO.getUserId(request.getParameter("username")));
    response.sendRedirect("dashboard.jsp");

}else{
    request.getSession().setAttribute("userStatus", "-1");
    response.sendRedirect("login.jsp");
}

}

else if(request.getParameter("page").toString().equals("register")){
        
        String fName =request.getParameter("fname");
        String lName =request.getParameter("lname");
        String uName=request.getParameter("uname");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String contactNo =request.getParameter("contactno");
        String city =request.getParameter("city");
        String address =request.getParameter("address");
    
         
    pDAO.addNewStudent(fName,lName,uName,email,pass,contactNo,city,address);
    response.sendRedirect("adm-page.jsp?pgprt=1");
}else if(request.getParameter("page").toString().equals("profile")){
        
        String fName =request.getParameter("fname");
        String lName =request.getParameter("lname");
        String uName=request.getParameter("uname");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        String contactNo =request.getParameter("contactno");
        String city =request.getParameter("city");
        String address =request.getParameter("address");
         String uType =request.getParameter("utype");
        int uid=Integer.parseInt(session.getAttribute("userId").toString());
    
         
    pDAO.updateStudent(uid,fName,lName,uName,email,pass,contactNo,city,address,uType);
    response.sendRedirect("dashboard.jsp");
    
    }

    else if(request.getParameter("page").toString().equals("booking")){
        
        String fname =request.getParameter("fname");
        String email =request.getParameter("email");
        String contact=request.getParameter("contact");
        String city=request.getParameter("city");
        String address=request.getParameter("address");
        String giftid =request.getParameter("giftid");
        String sprice =request.getParameter("sprice");
        String quantity =request.getParameter("quantity");
         String total =request.getParameter("total");
        int uid=Integer.parseInt(session.getAttribute("userId").toString());
        Date dNow = new Date();
         SimpleDateFormat ft = 
         new SimpleDateFormat ("dd-MM-yyyy");
       String date =  ft.format(dNow).toString();
        
    
    pDAO.addBooking(uid,date,fname,email,contact,city,address,giftid,sprice,quantity,total);
    response.sendRedirect("dashboard.jsp");
    }
    //else if(request.getParameter("page").toString().equals("viewcart"))
  //  {
    else if(request.getParameter("operation").toString().equals("delbook")){
            int uid=Integer.parseInt(session.getAttribute("userId").toString());
                pDAO.delBooking(Integer.parseInt(request.getParameter("id")));
               response.sendRedirect("std-page.jsp?pgprt=2&uid="+uid);
          }
   // }
    
    
    
    
    
/////////////////////////////////////////////////////
else if(request.getParameter("page").toString().equals("gift")){
    if(request.getParameter("operation").toString().equals("addnew")){
       
        
       
        
      
        //pDAO.addNewGift(request.getParameter("name"),request.getParameter("image"),
                //request.getParameter("category"), request.getParameter("price"), request.getParameter("description"));
       // response.sendRedirect("adm-page.jsp?pgprt=2");
    }
    
  ////////////////////////////////////////////////////////////// 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    else if(request.getParameter("operation").toString().equals("del")){
        pDAO.delGift(Integer.parseInt(request.getParameter("id")));
        response.sendRedirect("adm-page.jsp?pgprt=2");
        
    }
else if(request.getParameter("operation").toString().equals("book")){
      int id = Integer.parseInt(request.getParameter("id"));
        response.sendRedirect("std-page.jsp?pgprt=5&id="+id);
        
    }
    
    
}else if(request.getParameter("page").toString().equals("accounts")){
    if(request.getParameter("operation").toString().equals("del")){
       pDAO.delUser(Integer.parseInt(request.getParameter("uid")));
        response.sendRedirect("adm-page.jsp?pgprt=1");
    }

}else if(request.getParameter("page").toString().equals("questions")){
    if(request.getParameter("operation").toString().equals("addnew")){
       // pDAO.addQuestion(request.getParameter("coursename"),request.getParameter("question"),
       //         request.getParameter("opt1"), request.getParameter("opt2"),request.getParameter("opt3"),
       // request.getParameter("opt4"), request.getParameter("correct"));
        response.sendRedirect("adm-page.jsp?pgprt=3");
    }else if(request.getParameter("operation").toString().equals("del")){
       pDAO.delGift(Integer.parseInt(request.getParameter("id")));
        response.sendRedirect("adm-page.jsp?pgprt=3");
    }else if(request.getParameter("operation").toString().equals("delQuestion")){
       // pDAO.delQuestion(Integer.parseInt(request.getParameter("qid")));
        response.sendRedirect("adm-page.jsp?pgprt=3");
        
    }

}else if(request.getParameter("page").toString().equals("exams")){
    if(request.getParameter("operation").toString().equals("startexam")){
        String cName=request.getParameter("coursename");
        int userId=Integer.parseInt(session.getAttribute("userId").toString());
        
       /// int examId=pDAO.startExam(cName,userId);
//        session.setAttribute("examId",examId);
        session.setAttribute("examStarted","1");
        response.sendRedirect("std-page.jsp?pgprt=1&coursename="+cName);
    }else if(request.getParameter("operation").toString().equals("submitted")){
        try{
        String time=LocalTime.now().toString();
        int size=Integer.parseInt(request.getParameter("size"));
        int eId=Integer.parseInt(session.getAttribute("examId").toString());
        int tMarks=Integer.parseInt(request.getParameter("totalmarks"));
        session.removeAttribute("examId");
        session.removeAttribute("examStarted");
        for(int i=0;i<size;i++){
            String question=request.getParameter("question"+i);
            String ans=request.getParameter("ans"+i);
            
            int qid=Integer.parseInt(request.getParameter("qid"+i));
            
        //    pDAO.insertAnswer(eId,qid,question,ans);
        }
        response.getWriter().println(tMarks+" conn\t Size: "+size);
     //   pDAO.calculateResult(eId,tMarks,time,size);
        
        response.sendRedirect("std-page.jsp?pgprt=1&eid="+eId+"&showresult=1");
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
    }

}else if(request.getParameter("page").toString().equals("logout")){
    //session.setAttribute("userStatus","0");
    //session.removeAttribute("examId");
    //session.removeAttribute("examStarted");
    response.sendRedirect("index.jsp");
}
%>
