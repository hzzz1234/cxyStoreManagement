package com.cxy.apptools.domain.storemanager;

import java.util.Date;

public class Cxyproduct {
    private Integer productid;

    private Integer branchid;

    private String branchname;

    private Integer productcategoryid;

    private String productcategoryname;

    private String stockno;

    private Double purchaseprice;

    private Double sellprice;

    private String picaddr;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    public Integer getBranchid() {
        return branchid;
    }

    public void setBranchid(Integer branchid) {
        this.branchid = branchid;
    }

    public String getBranchname() {
        return branchname;
    }

    public void setBranchname(String branchname) {
        this.branchname = branchname == null ? null : branchname.trim();
    }

    public Integer getProductcategoryid() {
        return productcategoryid;
    }

    public void setProductcategoryid(Integer productcategoryid) {
        this.productcategoryid = productcategoryid;
    }

    public String getProductcategoryname() {
        return productcategoryname;
    }

    public void setProductcategoryname(String productcategoryname) {
        this.productcategoryname = productcategoryname == null ? null : productcategoryname.trim();
    }

    public String getStockno() {
        return stockno;
    }

    public void setStockno(String stockno) {
        this.stockno = stockno == null ? null : stockno.trim();
    }

    public Double getPurchaseprice() {
        return purchaseprice;
    }

    public void setPurchaseprice(Double purchaseprice) {
        this.purchaseprice = purchaseprice;
    }

    public Double getSellprice() {
        return sellprice;
    }

    public void setSellprice(Double sellprice) {
        this.sellprice = sellprice;
    }

    public String getPicaddr() {
        return picaddr;
    }

    public void setPicaddr(String picaddr) {
        this.picaddr = picaddr == null ? null : picaddr.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getDatachangeLasttime() {
        return datachangeLasttime;
    }

    public void setDatachangeLasttime(Date datachangeLasttime) {
        this.datachangeLasttime = datachangeLasttime;
    }
}