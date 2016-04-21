package com.cxy.apptools.web.storemanager.service.imp;

import com.alibaba.fastjson.JSON;
import com.cxy.apptools.domain.storemanager.Cxysupplier;
import com.cxy.apptools.domain.storemanager.Cxysuppliercategory;
import com.cxy.apptools.persistence.storemanager.dao.CxysupplierMapper;
import com.cxy.apptools.persistence.storemanager.dao.CxysuppliercategoryMapper;
import com.cxy.apptools.web.storemanager.beans.Msg;
import com.cxy.apptools.web.storemanager.service.SupplierService;
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
 * Created by Administrator on 2015/12/18.
 */
@Service("supplierService")
public class SupplierServiceImp implements SupplierService{
    @Autowired
    private CxysupplierMapper cxysupplierMapper;

    @Autowired
    private CxysuppliercategoryMapper cxysuppliercategoryMapper;

    public List<Cxysuppliercategory> queryAllValues()
    {
        return cxysuppliercategoryMapper.selectAllValues();
    }

    public Map<Integer,List<CategoryLeafNode>> querySupplierTree(){
        List<Cxysuppliercategory> cxysuppliercategories = cxysuppliercategoryMapper.selectAllValues();
        List<Cxysupplier> cxysuppliers = cxysupplierMapper.selectAllValues();

        Map<Integer,List<CategoryLeafNode>> map = Maps.newTreeMap();

        for(Cxysuppliercategory cxysuppliercategory: cxysuppliercategories){
            CategoryLeafNode categoryLeafNode= new CategoryLeafNode(cxysuppliercategory.getSuppliercategoryid(),cxysuppliercategory.getSuppliercategoryname()
            ,cxysuppliercategory.getPcategoryid(),false);
            if(!map.containsKey(categoryLeafNode.getPid()))
                map.put(categoryLeafNode.getPid(),new ArrayList<CategoryLeafNode>());
            map.get(categoryLeafNode.getPid()).add(categoryLeafNode);
        }

        for(Cxysupplier cxysupplier: cxysuppliers){
            CategoryLeafNode categoryLeafNode= new CategoryLeafNode(cxysupplier.getSupplierid(),
                    cxysupplier.getSuppliername()
                    ,cxysupplier.getSuppliercategoryid(),true);
            if(!map.containsKey(categoryLeafNode.getPid()))
                map.put(categoryLeafNode.getPid(),new ArrayList<CategoryLeafNode>());
            map.get(categoryLeafNode.getPid()).add(categoryLeafNode);
        }

        return map;
    }

    @Override
    //t为0删除category,t为1删除supplier
    public String deleteSupplierOrSupplierCategory(int id, int type) {
        int cnt = 0;
        if(type==1){
            cnt = cxysupplierMapper.deleteByPrimaryKey(id);
        }else{
            cxysupplierMapper.deleteBySupplierCategoryid(id);
            cxysuppliercategoryMapper.deleteByPCategoryid(id);
            cnt=cxysuppliercategoryMapper.deleteByPrimaryKey(id);
        }
        if(cnt>0){
            return JSON.toJSONString(new Msg(0,"delete success",""));
        }else{
            return JSON.toJSONString(new Msg(1,"delete fail",""));

        }
    }

    @Override
    //添加t为0category,t为1supplier
    public String addSupplierOrSupplierCategory(String name,int psuppliercategoryid, int type) {
        int cnt=0;
        if(type==1){
            Integer supplierid = cxysupplierMapper.queryByNameAndCategoryid(name,psuppliercategoryid);
            if(supplierid!=null){
                return JSON.toJSONString(new Msg(2,"add supplier fail，供应商已存在",""));
            }else{
                Cxysupplier cxysupplier = new Cxysupplier();
                cxysupplier.setSuppliername(name);
                cxysupplier.setSuppliercategoryid(psuppliercategoryid);
                cxysupplier.setCreateTime(new Date());
                cxysupplier.setStatus(0);
                cnt = cxysupplierMapper.insert(cxysupplier);
            }
            if(cnt>0){
                supplierid = cxysupplierMapper.queryByNameAndCategoryid(name,psuppliercategoryid);
                return JSON.toJSONString(new Msg(0,"add supplier success",String.valueOf(supplierid)));
            }else{
                return JSON.toJSONString(new Msg(1,"add supplier fail",""));

            }
        }else {
            Integer suppliercategoryid = cxysuppliercategoryMapper.queryByNameAndCategoryid(name, psuppliercategoryid);
            if (suppliercategoryid != null) {
                return JSON.toJSONString(new Msg(2, "add suppliercategory fail,供应商类别已存在", ""));
            } else {
                Cxysuppliercategory cxysuppliercategory = new Cxysuppliercategory();
                cxysuppliercategory.setSeq(1);
                cxysuppliercategory.setSuppliercategoryname(name);
                cxysuppliercategory.setPcategoryid(psuppliercategoryid);
                cxysuppliercategory.setCreateTime(new Date());
                cxysuppliercategory.setDeleted(0);
                cnt = cxysuppliercategoryMapper.insert(cxysuppliercategory);
            }

            if (cnt > 0) {
                suppliercategoryid = cxysuppliercategoryMapper.queryByNameAndCategoryid(name, psuppliercategoryid);
                return JSON.toJSONString(new Msg(0, "add suppliercategory success", String.valueOf(suppliercategoryid)));
            } else {
                return JSON.toJSONString(new Msg(1, "add suppliercategory fail", ""));

            }
        }
    }

    @Override
    public String selectSupplier(int id) {
        Cxysupplier cxysupplier = cxysupplierMapper.selectByPrimaryKey(id);
        if(cxysupplier==null) {
            return JSON.toJSONString(new Msg(2, "查找supplier失败", ""));
        }else{
            return JSON.toJSONString(new Msg(0, "查找supplier成功", JSON.toJSONString(cxysupplier)));
        }
    }

    @Override
    public String rename(int id,String name, int type) {
        int cnt=0;
        if(type==1){
            Cxysupplier cxysupplier=cxysupplierMapper.selectByPrimaryKey(id);
            int oldid=cxysupplier.getSuppliercategoryid();
            Integer supplierid = cxysupplierMapper.queryByNameAndCategoryid(name,oldid);
            if(supplierid!=null){
                return JSON.toJSONString(new Msg(2,"rename supplier fail，供应商已存在",""));
            }else {
                /*Cxysupplier cxysupplier = cxysupplierMapper.selectByPrimaryKey(id);
                if (cxysupplier == null) {
                    return JSON.toJSONString(new Msg(2, "查找重命名供应商失败", ""));
                }*/
                cxysupplier.setSuppliername(name);
                cnt = cxysupplierMapper.updateByPrimaryKey(cxysupplier);
                if (cnt > 0) {
                    return JSON.toJSONString(new Msg(0, "重命名供应商成功", ""));
                } else {
                    return JSON.toJSONString(new Msg(1, "重命名供应商失败", ""));
                }
            }
        }else{
            Cxysuppliercategory cxysuppliercategory = cxysuppliercategoryMapper.selectByPrimaryKey(id);
            int oldid=cxysuppliercategory.getPcategoryid();
            Integer suppliercategoryid = cxysuppliercategoryMapper.queryByNameAndCategoryid(name, oldid);
            if (suppliercategoryid != null) {
                return JSON.toJSONString(new Msg(2, "rename suppliercategory fail,供应商类别已存在", ""));
            }else{
                /*Cxysuppliercategory cxysuppliercategory = cxysuppliercategoryMapper.selectByPrimaryKey(id);
                if(cxysuppliercategory==null){
                    return JSON.toJSONString(new Msg(2,"查找重命名供应商类别失败",""));
                }*/
                cxysuppliercategory.setSuppliercategoryname(name);
                cnt = cxysuppliercategoryMapper.updateByPrimaryKey(cxysuppliercategory);
                if(cnt>0){
                    return JSON.toJSONString(new Msg(0,"重命名供应商类别成功",""));
                }else{
                    return JSON.toJSONString(new Msg(1,"重命名供应商类别失败",""));

                }
            }
        }


    }

    @Override
    public String updateSupplier(Cxysupplier cxysupplier) {
        int cnt=0;
        Cxysupplier cxysupplier1 = cxysupplierMapper.selectByPrimaryKey(cxysupplier.getSupplierid());
        if(cxysupplier1==null){
            return JSON.toJSONString(new Msg(2,"查找更改供应商失败",""));
        }
        cnt = cxysupplierMapper.updateByPrimaryKey(cxysupplier);
        if(cnt>0){
            return JSON.toJSONString(new Msg(0,"更改供应商成功",""));
        }else{
            return JSON.toJSONString(new Msg(1,"更改供应商失败",""));
        }
    }
}
