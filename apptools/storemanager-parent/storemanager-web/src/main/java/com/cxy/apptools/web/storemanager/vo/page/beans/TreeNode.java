package com.cxy.apptools.web.storemanager.vo.page.beans;

import java.util.List;

/**
 * Created by Administrator on 2016/4/8.
 */
public class TreeNode {
    private CategoryLeafNode node;
    private List<TreeNode> children;

    public CategoryLeafNode getNode() {
        return node;
    }

    public void setNode(CategoryLeafNode node) {
        this.node = node;
    }

    public List<TreeNode> getChildren() {
        return children;
    }

    public void setChildren(List<TreeNode> children) {
        this.children = children;
    }
}
