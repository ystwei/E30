package com.weikun.dao;

import com.weikun.model.Item;
import com.weikun.model.Product;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/9/7.
 */
public interface PetMapper {
    public List<Product> queryProductByPro(Map map);
    public List<Item> queryItemsByPro(Map map);
}
