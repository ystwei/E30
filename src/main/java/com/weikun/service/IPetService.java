package com.weikun.service;

import com.weikun.model.Category;
import com.weikun.model.CategoryExample;

import java.util.List;

/**
 * Created by Administrator on 2016/9/5.
 */

public interface IPetService {
    List<Category> selectByExample(CategoryExample example);
}
