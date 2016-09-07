package com.weikun.service;

import com.weikun.model.Category;
import com.weikun.model.CategoryExample;
import com.weikun.model.Item;
import com.weikun.model.Product;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/9/5.
 */

public interface IPetService {
    List<Category> selectByExample(CategoryExample example);
    public List<Product> queryProductByPro(Map map);
    public List<Item> queryItemsByPro(Map map);
}
