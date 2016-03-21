package com.cxy.apptools.web.storemanager.vo.page;

/**
 * Created by songbo on 2015/12/23.
 */
public class ProductInStoreVo extends BasePageVo {

    //主键
    private  int id;
    //入库单据号
    private  String warehouseid;

    //商铺id
    private int shopid;

    //供应商id
    private int supplierid;

    //入库数量
    private int quantity;

    public void setId(int id) {
        this.id = id;
    }

    public void setWarehouseid(String warehouseid) {
        this.warehouseid = warehouseid;
    }

    public void setShopid(int shopid) {
        this.shopid = shopid;
    }

    public void setSupplierid(int supplierid) {
        this.supplierid = supplierid;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setPerprice(double perprice) {
        this.perprice = perprice;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public void setRepsor(String repsor) {
        this.repsor = repsor;
    }

    public void setCreat_time(String creat_time) {
        this.creat_time = creat_time;
    }

    public void setDataChange_LastTime(String dataChange_LastTime) {
        this.dataChange_LastTime = dataChange_LastTime;
    }

    //进货单价
    private  double perprice;

    //单据说明
    private  String comment;

    //经办人
    private String repsor;

    public int getId() {
        return id;
    }

    public String getWarehouseid() {
        return warehouseid;
    }

    public int getShopid() {
        return shopid;
    }

    public int getSupplierid() {
        return supplierid;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getPerprice() {
        return perprice;
    }

    public String getComment() {
        return comment;
    }

    public String getRepsor() {
        return repsor;
    }

    public String getCreat_time() {
        return creat_time;
    }

    public String getDataChange_LastTime() {
        return dataChange_LastTime;
    }

    //创建时间
    private String creat_time;

    //最后更新时间
    private String dataChange_LastTime;




}
