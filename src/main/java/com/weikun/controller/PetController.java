package com.weikun.controller;

import com.weikun.model.Item;
import com.weikun.model.Product;
import com.weikun.service.IPetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
