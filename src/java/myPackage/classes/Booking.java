/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package myPackage.classes;

/**
 *
 * @author win 8.1
 */
public class Booking {
   
   private int bid, uid;
   private String date,fname,email,contact,city,address,giftid,sprice,quantity,total,status;
   
    public Booking(){
       
   }
    public Booking(int bid,String date,String fname,String email,String contact,String city,String address,String giftid,String sprice,String quantity,String total,int uid,String status) {
        this.bid = bid;
        this.uid =uid;
        this.date = date;
        this.fname = fname;
        this.email = email;
        this.contact = contact;
        this.city = city;
        this.address = address;
        this.giftid = giftid;
        this.sprice = sprice;
        
          this.quantity = quantity;
        this.total = total;
        this.status = status;
    }

    public int getUserId() {
        return uid;
    }

    public void setUserId(int uid) {
        this.uid = uid;
    }

    public int getBookingId() {
        return bid;
    }

    public void setBookingId(int bid) {
        this.bid = bid;
    }
    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFirstName() {
        return fname;
    }

    public void setFirstName(String fname) {
        this.fname = fname;
    }

    public String getEmailId() {
        return email;
    }

    public void setEmailId(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGiftId() {
        return giftid;
    }

    public void setGiftId(String giftid) {
        this.giftid = giftid;
    }

    public String getPrice() {
        return sprice;
    }

    public void setPrice(String sprice) {
        this.sprice = sprice;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

   public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
   
   
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
   
    
    
}
