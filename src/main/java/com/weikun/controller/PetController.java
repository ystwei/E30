package com.weikun.controller;

import com.weikun.model.*;
import com.weikun.service.IPetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/9/5.
 */
@Controller
@RequestMapping(value="/pet")
public class PetController {
    @Autowired
    private IPetService service;

    @RequestMapping(value="/main")
    public String main(){

        return "shop/main.ftl";
    }

    @RequestMapping(value="/queryP/c/{cate}")
    public String queryProductByC(@PathVariable(value="cate") String cate, ModelMap m){
        Map<String,String> map=new HashMap<String,String>();
        map.put("in_catid",cate.trim());

        List <Product>list=service.queryProductByPro(map);
        m.put("plist",list);
        return "shop/product.ftl";
    }
    @RequestMapping(value="/queryIS/p/{pro}")
    public String queryProductByIS(@PathVariable(value="pro") String pro, ModelMap m){
        Map<String,String> map=new HashMap<String,String>();
        map.put("in_productid",pro.trim());

        List <Item>list=service.queryItemsByPro(map);
        m.put("ilist",list);
        return "shop/items.ftl";
    }

    @RequestMapping(value="/queryI/i/{item}")
    public String queryItemByid(@PathVariable(value="item") String itemid, ModelMap m){
        Map<String,String> map=new HashMap<String,String>();
        map.put("in_itemid",itemid.trim());

        List <Item>list=service.queryItemsByPro(map);
        m.put("item",list.get(0));
        return "shop/item.ftl";
    }
    @RequestMapping(value="/add/iid/{iid}/qty/{qty}" )
    public String addCart(@PathVariable(value="iid") String iid,
                          @PathVariable(value="qty") String qty,
                          ModelMap m){
        Map<String,String> map=new HashMap<String,String>();
        map.put("in_itemid",iid.trim());
        map.put("in_quantity",qty.trim());
        List <Cart> clist=service.addCart5(map);
        m.put("clist",clist);
        return "shop/cart.ftl";
    }
    @RequestMapping(value="/del/iid/{iid}/oid/{oid}" )
    public String delCart(@PathVariable(value="iid") String iid,
                          @PathVariable(value="oid") String oid,
                          ModelMap m){
        CartKey ck=new CartKey();
        ck.setOrderid(Integer.parseInt(oid));
        ck.setItemid(iid);
        service.deleteByPrimaryKey(ck);
        CartKey key=new CartKey();
        key.setOrderid(Integer.parseInt(oid));
        List <Cart> clist=service.queryCars(key);
        m.put("clist",clist);
        return "shop/cart.ftl";
    }

    @RequestMapping(value="/up" )
    public String upCart(
                         @RequestParam(value="its") String[] its,
                         @RequestParam(value="qts") String[]  qts,
                         @RequestParam(value="ois") String[]  ois,
                         ModelMap m){
        Map<String,String> map=new HashMap<String,String>();

        for( int i=0;i<its.length;i++){
            map.put("in_itemid",its[i]);
            map.put("in_oid",ois[i]);
            map.put("in_qty",qts[i]);
            service.updateCart5(map);

        }
        CartKey key=new CartKey();
        key.setOrderid(Integer.parseInt(ois[0]));
        List <Cart> clist=service.queryCars(key);
        m.put("clist",clist);


        return "shop/cart.ftl";

    }

    @RequestMapping(value="/checkout/oid/{oid}/t/{t}" )
    public String upCart(@PathVariable(value="oid") String oid,
                         @PathVariable(value="t" ) String t){
        Orders o=new Orders();
        o.setOrderid(Integer.parseInt(oid));
        o.setOrderdate(new Date());
        o.setTotalprice(new BigDecimal(Float.parseFloat(t)));
        service.updateByPrimaryKey(o);
        return "shop/main.ftl";
    }


}
