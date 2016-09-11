package com.weikun.service;

import com.weikun.model.*;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/9/5.
 */

public interface IPetService {
    List<Category> selectByExample(CategoryExample example);
    public List<Product> queryProductByPro(Map map);
    public List<Item> queryItemsByPro(Map map);
    public List<Cart> addCart5(Map map);
    public void updateCart5(Map map);
    public List<Cart> deleteByPrimaryKey(CartKey key);
    public List<Cart> queryCars(CartKey key);
    int updateByPrimaryKey(Orders record);
}
