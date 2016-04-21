package com.cxy.apptools.web.storemanager.vo.page;

import com.cxy.apptools.web.storemanager.vo.page.beans.CategoryLeafNode;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2015/12/17.
 */
public class ClientDefineVo extends BasePageVo{
    Map<Integer,List<CategoryLeafNode>> clientTree ;

    public Map<Integer, List<CategoryLeafNode>> getClientTree() {
        return clientTree;
    }

    public void setClientTree(Map<Integer, List<CategoryLeafNode>> clientTree) {
        this.clientTree = clientTree;
    }

}
