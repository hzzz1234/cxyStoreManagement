package com.cxy.apptools.domain.storemanager;

import java.text.SimpleDateFormat;
import java.util.Date;


public class Cxypurchaseorder {
    private Integer id;

    private String pouid;

    private Integer shopid;

    private Integer supplierid;

    private Integer quantity;

    private Double payamount;

    private Double totalamout;

    private Integer currency;

    private String comment;

    private Integer status;

    private Date pddate;

    private Date redate;

    private String repsor;

    private Date createTime;

    private Date datachangeLasttime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPouid() {
        return pouid;
    }

    public void setPouid(String pouid) {
        this.pouid = pouid == null ? null : pouid.trim();
    }

    public Integer getShopid() {
        return shopid;
    }

    public void setShopid(Integer shopid) {
        this.shopid = shopid;
    }

    public Integer getSupplierid() {
        return supplierid;
    }

    public void setSupplierid(Integer supplierid) {
        this.supplierid = supplierid;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Double getPayamount() {
        return payamount;
    }

    public void setPayamount(Double payamount) {
        this.payamount = payamount;
    }

    public Double getTotalamout() {
        return totalamout;
    }

    public void setTotalamout(Double totalamout) {
        this.totalamout = totalamout;
    }

    public Integer getCurrency() {
        return currency;
    }

    public void setCurrency(Integer currency) {
        this.currency = currency;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }

    public Integer getStatus() {

        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getPddate() {
        SimpleDateFormat formatter;
        formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String ctime = formatter.format(pddate);

        return ctime;
    }

    public void setPddate(Date pddate) {
        this.pddate = pddate;
    }

    public String getRedate() {
        SimpleDateFormat formatter;
        formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String ctime = formatter.format(redate);

        return ctime;
    }

    public void setRedate(Date redate) {
        this.redate = redate;
    }

    public String getRepsor() {
        return repsor;
    }

    public void setRepsor(String repsor) {
        this.repsor = repsor == null ? null : repsor.trim();
    }

    public String getCreateTime() {
        SimpleDateFormat formatter;
        formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String ctime = formatter.format(createTime);
        return ctime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getDatachangeLasttime() {
        SimpleDateFormat formatter;
        formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String ctime = formatter.format(datachangeLasttime);
        return ctime;

    }

    public void setDatachangeLasttime(Date datachangeLasttime) {
        this.datachangeLasttime = datachangeLasttime;
    }

}