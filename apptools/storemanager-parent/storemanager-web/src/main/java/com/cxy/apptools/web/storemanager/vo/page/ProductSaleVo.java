package com.cxy.apptools.web.storemanager.vo.page;

/**
 * Created by songbo on 2015/12/23.
 */
public class ProductSaleVo extends BasePageVo {

    //主键
    private int id;

    public int getId() {
        return id;
    }

    public String getSellid() {
        return sellid;
    }

    public int getShopid() {
        return shopid;
    }

    public int getClientid() {
        return clientid;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getPerprice() {
        return perprice;
    }

    public int getCurrency() {
        return currency;
    }

    public String getComment() {
        return comment;
    }

    public String getRepsor() {
        return repsor;
    }

    public String getCreate_time() {
        return create_time;
    }

    public String getDataChange_LastTime() {
        return dataChange_LastTime;
    }

    //销售出库单号
    private String sellid;
    //商铺id
    private int shopid;
    //客户id
    private int clientid;

    public void setId(int id) {
        this.id = id;
    }

    public void setSellid(String sellid) {
        this.sellid = sellid;
    }

    public void setShopid(int shopid) {
        this.shopid = shopid;
    }

    public void setClientid(int clientid) {
        this.clientid = clientid;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setPerprice(double perprice) {
        this.perprice = perprice;
    }

    public void setCurrency(int currency) {
        this.currency = currency;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public void setRepsor(String repsor) {
        this.repsor = repsor;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public void setDataChange_LastTime(String dataChange_LastTime) {
        this.dataChange_LastTime = dataChange_LastTime;
    }

    //入库数量
    private int quantity;
    //进货单价
    private double perprice;
    //币种
    private int currency;
    //单据说明
    private String comment;
    //收款人
    private String repsor;
    //创建时间
    private String create_time;
    //最后更新时间
    private String dataChange_LastTime;

}
