package com.weikun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/9/3.
 */
@Controller
@RequestMapping(value = "/acc")
public class AccountController {

    @RequestMapping(value="/lmain")
    public String loginMain(){
        System.out.print("ok");
        return "shop/login.ftl";

    }
}
