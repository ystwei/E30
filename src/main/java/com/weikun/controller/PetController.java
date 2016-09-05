package com.weikun.controller;

import com.weikun.service.IPetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/9/5.
 */
@Controller
@RequestMapping(value="/pet")
public class PetController {
    @Autowired
    private IPetService service;

    @RequestMapping(value="/queryC")
    public void queryCategory(){


    }

}
