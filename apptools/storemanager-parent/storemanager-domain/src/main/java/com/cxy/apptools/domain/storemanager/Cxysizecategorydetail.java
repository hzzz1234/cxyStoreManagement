package com.cxy.apptools.domain.storemanager;

public class Cxysizecategorydetail {
    private Integer sizedetailid;

    private Integer sizecategoryid;

    private String sizecategoryname;

    private String size;

    public Integer getSizedetailid() {
        return sizedetailid;
    }

    public void setSizedetailid(Integer sizedetailid) {
        this.sizedetailid = sizedetailid;
    }

    public Integer getSizecategoryid() {
        return sizecategoryid;
    }

    public void setSizecategoryid(Integer sizecategoryid) {
        this.sizecategoryid = sizecategoryid;
    }

    public String getSizecategoryname() {
        return sizecategoryname;
    }

    public void setSizecategoryname(String sizecategoryname) {
        this.sizecategoryname = sizecategoryname == null ? null : sizecategoryname.trim();
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size == null ? null : size.trim();
    }
}