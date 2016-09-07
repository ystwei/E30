package com.weikun.service;

import com.weikun.dao.CategoryMapper;
import com.weikun.dao.PetMapper;
import com.weikun.model.Category;
import com.weikun.model.CategoryExample;
import com.weikun.model.Item;
import com.weikun.model.Product;
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
}
