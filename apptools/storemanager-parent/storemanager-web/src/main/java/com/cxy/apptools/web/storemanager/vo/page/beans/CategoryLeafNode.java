package com.cxy.apptools.web.storemanager.vo.page.beans;

/**
 * Created by Administrator on 2016/4/9.
 */
public class CategoryLeafNode  {
    private int id;
    private String name;
    private int pid;
    private boolean isLeaf;

    public boolean isLeaf() {
        return isLeaf;
    }

    public void setIsLeaf(boolean isLeaf) {
        this.isLeaf = isLeaf;
    }

    public CategoryLeafNode(int id, String name, int pid,boolean isLeaf) {
        this.id = id;
        this.name = name;
        this.pid = pid;
        this.isLeaf = isLeaf;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }
}
