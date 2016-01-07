package com.cxy.apptools.web.storemanager.service.models;

/**
 * Created by songbo on 2016/1/7.
 */
public class ProductPurchaseModel {

    private Integer id;
    private String pouid;
    private Integer shopid;

    private Integer supplierid;

    private Integer quantity;

    private Double payamount;

    private Double totalamout;

    private Integer currency;

    private String comment;

    private String status;

    private String pddate;

    private String redate;

    private String repsor;

    private String createTime;

    private String datachangeLasttime;

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }



    public String getPouid() {
        return pouid;
    }

    public Integer getShopid() {
        return shopid;
    }



    public Double getTotalamout() {
        return totalamout;
    }

    public Double getPayamount() {
        return payamount;

    }

    public void setPouid(String pouid) {
        this.pouid = pouid;
    }

    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }

    public void setTotalamout(Double totalamout) {
        this.totalamout = totalamout;
    }

    public void setRepsor(String repsor) {
        this.repsor = repsor;
    }

    public void setDatachangeLasttime(String datachangeLasttime) {
        this.datachangeLasttime = datachangeLasttime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;

    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setRedate(String redate) {
        this.redate = redate;
    }

    public void setPddate(String pddate) {
        this.pddate = pddate;
    }

    public void setComment(String comment) {
        this.comment = comment;

    }

    public void setCurrency(Integer currency) {
        this.currency = currency;
    }

    public void setPayamount(Double payamount) {
        this.payamount = payamount;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public void setSupplierid(Integer supplierid) {
        this.supplierid = supplierid;
    }

    public Integer getCurrency() {
        return currency;
    }

    public String getDatachangeLasttime() {
        return datachangeLasttime;
    }

    public String getRedate() {
        return redate;

    }

    public String getCreateTime() {
        return createTime;
    }

    public String getRepsor() {

        return repsor;
    }

    public String getPddate() {
        return pddate;
    }

    public String getStatus() {

        return status;
    }

    public String getComment() {
        return comment;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public Integer getSupplierid() {

        return supplierid;
    }


}
