package com.cxy.apptools.web.storemanager.service.imp;

import com.alibaba.fastjson.JSON;
import com.cxy.apptools.domain.storemanager.Cxyclient;
import com.cxy.apptools.domain.storemanager.Cxyclientcategory;
import com.cxy.apptools.persistence.storemanager.dao.CxyclientMapper;
import com.cxy.apptools.persistence.storemanager.dao.CxyclientcategoryMapper;
import com.cxy.apptools.web.storemanager.beans.Msg;
import com.cxy.apptools.web.storemanager.service.ClientService;
import com.cxy.apptools.web.storemanager.vo.page.beans.CategoryLeafNode;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
/**
 * Created by fei on 2016/4/17.
 */
@Service("clientService")
public class ClientServiceImp implements  ClientService{

    @Autowired
    private CxyclientMapper cxyclientMapper;
    @Autowired
    private CxyclientcategoryMapper cxyclientcategoryMapper;

    public List<Cxyclientcategory> queryAllValues() {
        return cxyclientcategoryMapper.selectAllValues();
    }
    @Override
    public Map<Integer, List<CategoryLeafNode>> queryClientTree() {
        List<Cxyclientcategory> cxyclientcategories = cxyclientcategoryMapper.selectAllValues();
        List<Cxyclient> cxyclients = cxyclientMapper.selectAllValues();

        Map<Integer,List<CategoryLeafNode>> map = Maps.newTreeMap();

        for(Cxyclientcategory cxyclientcategory: cxyclientcategories){
            CategoryLeafNode categoryLeafNode= new CategoryLeafNode(cxyclientcategory.getClientcategoryid(),cxyclientcategory.getClientcategoryname()
                    ,cxyclientcategory.getPcategoryid(),false);
            if(!map.containsKey(categoryLeafNode.getPid()))
                map.put(categoryLeafNode.getPid(),new ArrayList<CategoryLeafNode>());
            map.get(categoryLeafNode.getPid()).add(categoryLeafNode);
        }

        for(Cxyclient cxyclient: cxyclients){
            CategoryLeafNode categoryLeafNode= new CategoryLeafNode(cxyclient.getClientid(),
                    cxyclient.getClientname()
                    ,cxyclient.getClientcategoryid(),true);
            if(!map.containsKey(categoryLeafNode.getPid()))
                map.put(categoryLeafNode.getPid(),new ArrayList<CategoryLeafNode>());
            map.get(categoryLeafNode.getPid()).add(categoryLeafNode);
        }

        return map;
    }
    @Override
    public String deleteClientOrClientCategory(int id, int type) {
        int cnt = 0;
        if(type==1){
            cnt = cxyclientMapper.deleteByPrimaryKey(id);
        }else{
            cxyclientMapper.deleteByClientCategoryid(id);
            cxyclientcategoryMapper.deleteByPCategoryid(id);
            cnt=cxyclientcategoryMapper.deleteByPrimaryKey(id);
        }
        if(cnt>0){
            return JSON.toJSONString(new Msg(0,"delete success",""));
        }else{
            return JSON.toJSONString(new Msg(1,"delete fail",""));

        }
    }
    @Override
    public String addClientOrClientCategory(String name, int pclientcategoryid, int type) {
        int cnt=0;
        if(type==1){
            Integer clientid = cxyclientMapper.queryByNameAndCategoryid(name,pclientcategoryid);
            if(clientid!=null){
                return JSON.toJSONString(new Msg(2,"add client fail，客户已存在",""));
            }else{
                Cxyclient cxyclient = new Cxyclient();
                cxyclient.setClientname(name);
                cxyclient.setClientcategoryid(pclientcategoryid);
                cxyclient.setCreateTime(new Date());
                cxyclient.setStatus(0);
                cnt = cxyclientMapper.insert(cxyclient);
            }
            if(cnt>0){
                clientid = cxyclientMapper.queryByNameAndCategoryid(name,pclientcategoryid);
                return JSON.toJSONString(new Msg(0,"add client success",String.valueOf(clientid)));
            }else{
                return JSON.toJSONString(new Msg(1,"add client fail",""));

            }
        }else {
            Integer clientcategoryid = cxyclientcategoryMapper.queryByNameAndCategoryid(name, pclientcategoryid);
            if (clientcategoryid != null) {
                return JSON.toJSONString(new Msg(2, "add clientcategory fail,客户类别已存在", ""));
            } else {
                Cxyclientcategory cxyclientcategory = new Cxyclientcategory();
                cxyclientcategory.setSeq(1);
                cxyclientcategory.setClientcategoryname(name);
                cxyclientcategory.setPcategoryid(pclientcategoryid);
                cxyclientcategory.setCreateTime(new Date());
                cxyclientcategory.setDeleted(0);
                cnt = cxyclientcategoryMapper.insert(cxyclientcategory);
            }

            if (cnt > 0) {
                clientcategoryid = cxyclientcategoryMapper.queryByNameAndCategoryid(name, pclientcategoryid);
                return JSON.toJSONString(new Msg(0, "add clientcategory success", String.valueOf(clientcategoryid)));
            } else {
                return JSON.toJSONString(new Msg(1, "add clientcategory fail", ""));

            }
        }
    }
    @Override
    public String selectClient(int id) {
        Cxyclient cxyclient = cxyclientMapper.selectByPrimaryKey(id);
        if(cxyclient==null) {
            return JSON.toJSONString(new Msg(2, "查找client失败", ""));
        }else{
            return JSON.toJSONString(new Msg(0, "查找client成功", JSON.toJSONString(cxyclient)));
        }
    }
    @Override
    //需完全按照添加判断
    public String rename(int id, String name, int type) {
        int cnt=0;
        if(type==1){
            Cxyclient cxyclient=cxyclientMapper.selectByPrimaryKey(id);
            int oldid=cxyclient.getClientcategoryid();
            Integer clientrid = cxyclientMapper.queryByNameAndCategoryid(name,oldid);
            if(clientrid!=null){
                return JSON.toJSONString(new Msg(2,"rename client fail，客户已存在",""));
            }else {
            /*Cxyclient cxyclient = cxyclientMapper.selectByPrimaryKey(id);
            if(cxyclient==null){
                return JSON.toJSONString(new Msg(2,"查找重命名客户失败",""));
            }*/
                cxyclient.setClientname(name);
                cnt = cxyclientMapper.updateByPrimaryKey(cxyclient);
                if (cnt > 0) {
                    return JSON.toJSONString(new Msg(0, "重命名客户成功", ""));
                } else {
                    return JSON.toJSONString(new Msg(1, "重命名客户失败", ""));
                }
            }
        }else{
            Cxyclientcategory cxyclientcategory = cxyclientcategoryMapper.selectByPrimaryKey(id);
            int oldid=cxyclientcategory.getPcategoryid();
            Integer clientcategoryid = cxyclientcategoryMapper.queryByNameAndCategoryid(name, oldid);
            if (clientcategoryid != null) {
                return JSON.toJSONString(new Msg(2, "rename clientcategory fail,客户类别已存在", ""));
            }else {
            /*Cxyclientcategory cxyclientcategory = cxyclientcategoryMapper.selectByPrimaryKey(id);
            if(cxyclientcategory==null){
                return JSON.toJSONString(new Msg(2,"查找重命名客户类别失败",""));
            }*/
                cxyclientcategory.setClientcategoryname(name);
                cnt = cxyclientcategoryMapper.updateByPrimaryKey(cxyclientcategory);
                if (cnt > 0) {
                    return JSON.toJSONString(new Msg(0, "重命名客户类别成功", ""));
                } else {
                    return JSON.toJSONString(new Msg(1, "重命名客户类别失败", ""));

                }
            }
        }
    }
    @Override
    public String updateClient(Cxyclient cxyclient) {
        int cnt=0;
        Cxyclient cxyclient1 = cxyclientMapper.selectByPrimaryKey(cxyclient.getClientid());
        if(cxyclient1==null){
            return JSON.toJSONString(new Msg(2,"查找更改客户失败",""));
        }
        cnt = cxyclientMapper.updateByPrimaryKey(cxyclient);
        if(cnt>0){
            return JSON.toJSONString(new Msg(0,"更改客户成功",""));
        }else{
            return JSON.toJSONString(new Msg(1,"更改客户失败",""));
        }
    }

}
