package com.cxy.apptools.web.storemanager.service;

import com.cxy.apptools.domain.storemanager.Cxyclient;
import com.cxy.apptools.domain.storemanager.Cxyclientcategory;
import com.cxy.apptools.web.storemanager.vo.page.beans.CategoryLeafNode;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2015/12/18.
 */
public interface ClientService {
    List<Cxyclientcategory> queryAllValues();

    Map<Integer,List<CategoryLeafNode>> queryClientTree();

    String deleteClientOrClientCategory(int id, int type);

    String addClientOrClientCategory(String name, int clientcategoryid, int type);

    String selectClient(int id);

    String rename(int id, String name, int type);

    String updateClient(Cxyclient cxyclient);
}
