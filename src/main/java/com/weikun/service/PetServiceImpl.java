package com.weikun.service;

import com.weikun.dao.CategoryMapper;
import com.weikun.model.Category;
import com.weikun.model.CategoryExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2016/9/5.
 */
@Service
public class PetServiceImpl implements  IPetService {
    @Autowired
    private CategoryMapper cdao;
    public List<Category> selectByExample(CategoryExample example) {
        return cdao.selectByExample(example);
    }
}
