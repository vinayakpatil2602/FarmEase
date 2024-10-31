package com.farm;


public class Product implements Comparable<Product> {
    private int prodid;
    private String pname;
    private String pcat;
    private double price;
    private double disc_price;
    private String photo;
    private String descr;
    private String create_date;
    private String instock;
    private String featured;
    public Product() {
    }

    public Product(String pname, String pcat, double price, double disc_price, String descr) {
        this.pname = pname;
        this.pcat = pcat;
        this.price = price;
        this.disc_price = disc_price;
        this.descr = descr;
    }
    
    public String getInstock(){
        return instock;
    }
    
    public void setInstock(String instock){
        this.instock=instock;
    }

    public int getProdid() {
        return prodid;
    }

    public void setProdid(int prodid) {
        this.prodid = prodid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPcat() {
        return pcat;
    }

    public void setPcat(String pcat) {
        this.pcat = pcat;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getDisc_price() {
        return disc_price;
    }

    public void setDisc_price(double disc_price) {
        this.disc_price = disc_price;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }
    public void setFeatured(String featured){
        this.featured=featured;
    }
    public String getFeatured(){
        return featured;
    }
    @Override
    public int compareTo(Product o) {
        return this.prodid>o.prodid ? -1 : 1;
    }
}