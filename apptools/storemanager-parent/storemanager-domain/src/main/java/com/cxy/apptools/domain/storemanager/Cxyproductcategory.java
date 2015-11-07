package com.cxy.apptools.domain.storemanager;

public class Cxyproductcategory {
    private Integer productcategoryid;

    private String productcategoryname;

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
}