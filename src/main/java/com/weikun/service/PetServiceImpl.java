package com.weikun.service;

import com.weikun.dao.CartMapper;
import com.weikun.dao.CategoryMapper;
import com.weikun.dao.OrdersMapper;
import com.weikun.dao.PetMapper;
import com.weikun.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/9/5.
 */
@Service
public class PetServiceImpl implements  IPetService {
    @Autowired
    private CategoryMapper cdao;
    @Autowired
    private CartMapper ccdao;

    @Autowired
    private OrdersMapper odao;
    @Autowired
    private PetMapper pdao;
    public List<Category> selectByExample(CategoryExample example) {
        return cdao.selectByExample(example);
    }
    public List<Product> queryProductByPro(Map map){
        return pdao.queryProductByPro(map);
    }

    public List<Item> queryItemsByPro(Map map) {
        return pdao.queryItemsByPro(map);
    }

    public List<Cart> addCart5(Map map) {
        return ccdao.addCart5(map);
    }

    public void updateCart5(Map map) {
        ccdao.updateCart5(map);
    }

    public List<Cart> deleteByPrimaryKey(CartKey key) {
        List <Cart> list=null;
        if( ccdao.deleteByPrimaryKey(key)>0){
           list=this.queryCars(key);
        }
        return list;
    }

    public List<Cart> queryCars(CartKey key) {
        List <Cart> list=null;
        CartExample e=new CartExample();
        e.createCriteria().andOrderidEqualTo(key.getOrderid());
        list = ccdao.selectByExample(e);
        return list;
    }

    public int updateByPrimaryKey(Orders record) {
        return odao.updateByPrimaryKey(record);
    }
}
