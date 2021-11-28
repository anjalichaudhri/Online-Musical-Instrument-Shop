/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package myPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import myPackage.classes.Booking;
import myPackage.classes.Gift;
//import myPackage.classes.Exams;
//import myPackage.classes.Questions;
import myPackage.classes.User;
public class DatabaseClass {
    private Connection conn;
    
    public DatabaseClass() throws ClassNotFoundException, SQLException {
        establishConnection();
    }
    private void establishConnection() throws ClassNotFoundException, SQLException {
       
            Class.forName("com.mysql.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/musicaljava","root","");
       
    }
    
    public ArrayList getAllUsers(){
        ArrayList list=new ArrayList();
        User user=null;
        PreparedStatement pstm;
        try {
            pstm = conn.prepareStatement("Select * from users");
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                user =new User(rs.getInt(1),rs.getString(2),
                        rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
            list.add(user);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
        return list;
    }
    
    public String getUserType(String userId){
        String str="";
        PreparedStatement pstm;
        try {
            pstm = conn.prepareStatement("Select * from users where user_id=?");
            pstm.setInt(1, Integer.parseInt(userId));
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                str= rs.getString("user_type");
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            str= "error";
        }
        return str;
    }
     public int getUserId(String userName){
        int str=0;
        PreparedStatement pstm;
        try {
            pstm = conn.prepareStatement("Select * from users where user_name=?");
            pstm.setString(1,userName);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                str= rs.getInt("user_id");
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            
        }
        return str;
    }
     
     public User getUserDetails(String userId){
         User userDetails=null;
         
         try {
            String sql="SELECT * from users where user_id=?";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1, userId);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                userDetails=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)
                                        ,rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8)
                                            ,rs.getString(9),rs.getString(10));
            }
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
         return userDetails;
     }
    
    public void addNewStudent(String fName,String lName,String uName,String email,String pass,
            String contact,String city,String address){
        try {
            String sql="INSERT into users(first_name,last_name,user_name,email,password,user_type,contact_no,city,address) "
                    + "Values(?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,fName );
            pstm.setString(2,lName );
            pstm.setString(3,uName );
            pstm.setString(4,email );
            pstm.setString(5,pass );
            pstm.setString(6,"student" );
            pstm.setString(7,contact );
            pstm.setString(8,city );
            pstm.setString(9,address );
            pstm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void addBooking(int uid,String date,String fname,String email,String contact,String city,String address,String giftid,String sprice,String quantity,String total){
        try {
            String sql="INSERT into booking(bookingdate,customername,email,contact,city,address,giftid,price,quantity,total,uid) "
                    + "Values(?,?,?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,date);
            pstm.setString(2,fname);
            pstm.setString(3,email);
            pstm.setString(4,contact);
            pstm.setString(5,city);
  
            pstm.setString(6,address );
            
            pstm.setString(7,giftid);
            pstm.setString(8,sprice);
            pstm.setString(9,quantity);
            pstm.setString(10,total);
             pstm.setInt(11,uid);
            pstm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateStudent(int uId,String fName,String lName,String uName,String email,String pass,
            String contact,String city,String address,String userType){
        try {
            String sql="Update users"
                    + " set first_name=? , last_name=? , user_name=? , email=? , password=? , user_type=? , contact_no=? , city=? , address=? "
                    + " where user_id=?";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,fName );
            pstm.setString(2,lName );
            pstm.setString(3,uName );
            pstm.setString(4,email );
            pstm.setString(5,pass );
            pstm.setString(6,userType );
            pstm.setString(7,contact );
            pstm.setString(8,city );
            pstm.setString(9,address );
            pstm.setInt(10,uId);
            pstm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    
    public void delUser(int uId){
        try {
            String sql="delete from users where user_id=?";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
           
            pstm.setInt(1,uId);
            pstm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    public boolean loginValidate(String userName, String userPass) throws SQLException{
        boolean status=false;
    
    String sql="SELECT * FROM users\n"
            + "WHERE user_name=?";
    PreparedStatement pstm=conn.prepareStatement(sql);
    pstm.setString(1,userName);
    ResultSet rs=pstm.executeQuery();
    String uname;
    String pass;
    while(rs.next()){
        uname=rs.getString("user_name");
        pass=rs.getString("password");
        
            if( pass.equals(userPass)){
                  return true;
             } 
        }//end while
         return false;
          
    }
    
    public ArrayList getAllGift(){
        ArrayList list=new ArrayList();
        Gift gift = null;
        try {
            String sql="SELECT * from gift";
            try (PreparedStatement pstm = conn.prepareStatement(sql)) {
                ResultSet rs=pstm.executeQuery();
                while(rs.next()){
                    list.add(rs.getString(1));
                    list.add(rs.getString(2));
                  list.add(rs.getBlob(3));
                  list.add(rs.getString(4));
                 list.add(rs.getString(5));
                   list.add(rs.getString(6));
                    //gift =new Gift(rs.getInt(1),rs.getString(2),
                        //rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
            //list.add(gift);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public void addNewGift(String name,String image,String category,String price,String description){
        try {
            String sql="INSERT into gift(name,image,category,price,description) Values(?,?,?,?,?)";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2,image);
            pstm.setString(3,category);
            pstm.setString(4, price);
            pstm.setString(5,description);
            pstm.executeUpdate();
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void delGift(int id){
        try {
            String sql="DELETE from gift where id=?";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setInt(1,id);
            pstm.executeUpdate();
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void delBooking(int id){
        try {
            String sql="DELETE from booking where bookingid=?";
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setInt(1,id);
            pstm.executeUpdate();
            pstm.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList getGiftByCategory(String category){
     ArrayList list=new ArrayList();
     try{
         PreparedStatement pstm=conn.prepareStatement("select * from gift where category=?");
        pstm.setString(1,category);
         ResultSet rs=pstm.executeQuery();
         Gift gift;
         while(rs.next()){
             gift = new Gift(
                       rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
                       rs.getString(5),rs.getString(6)
                    ); 
               list.add(gift);
         }
         pstm.close();
     }catch(Exception e){
          Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, e);
     }
     
     return list;
    }
    
    
    
    public Gift getGiftById(String category){
    Gift gift = null;
     try{
         PreparedStatement pstm=conn.prepareStatement("select * from gift where id=?");
        pstm.setString(1,category);
         ResultSet rs=pstm.executeQuery();
         
         while(rs.next()){
             gift = new Gift(
                       rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
                       rs.getString(5),rs.getString(6)
                    ); 
               
         }
         pstm.close();
     }catch(Exception e){
          Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, e);
     }
     
     return gift;
    }
    
    
    public ArrayList getUserBooking(String id){
     ArrayList list=new ArrayList();
     try{
         PreparedStatement pstm=conn.prepareStatement("select * from booking where uid=?");
        pstm.setString(1,id);
         ResultSet rs=pstm.executeQuery();
         Booking booking = null;
         while(rs.next()){
             booking = new Booking(
                       rs.getInt(1),rs.getString(2),rs.getString(3),
                       rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getInt(12),rs.getString(13)
                    ); 
               list.add(booking);
         }
         pstm.close();
     }catch(Exception e){
          Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, e);
     }
     
     return list;
    }
    
    
    public ArrayList getAllBooking(){
     ArrayList list=new ArrayList();
     try{
         PreparedStatement pstm=conn.prepareStatement("select * from booking");
  
         ResultSet rs=pstm.executeQuery();
         Booking booking = null;
         while(rs.next()){
             booking = new Booking(
                       rs.getInt(1),rs.getString(2),rs.getString(3),
                       rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getInt(12),rs.getString(13)
                    ); 
               list.add(booking);
         }
         pstm.close();
     }catch(Exception e){
          Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, e);
     }
     
     return list;
    }
    
    
    
    
    
    
    
    
}


