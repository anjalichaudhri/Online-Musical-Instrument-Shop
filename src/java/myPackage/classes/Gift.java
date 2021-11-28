

package myPackage.classes;

public class Gift {
    private int id;
    private String name;
   private String image;
   private String category;
    private String price;
   private String description;

    public Gift(int id,String name, String image, String category,String price,String description) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.category = category;
         this.price = price;
        this.description = description;
        
    }

    /*public Gift(String cName, int tMarks) {
        this.cName = name;
        this.tMarks = tMarks;
    }*/

    public Gift() {
    }

    public int getid() {
        return id;
    }

    public void setid(int id) {
        this.id = id;
    }
    public String getname() {
        return name;
    }

    public void setname(String name) {
        this.name = name;
    }

    public String getimage() {
        return image;
    }

    public void setimage(String image) {
        this.image = image;
    }

    public String getcategory() {
        return category;
    }

    public void setcategory(String category) {
        this.category = category;
    }
    
    
    public String getprice() {
        return price;
    }

    public void setprice(String price) {
        this.price = price;
    }
    
    public String getdescription() {
        return description;
    }

    public void setdescription(String description) {
        this.description = description;
    }
    

   
    
    
    
    
    
}
