package com.weikun.controller;

import com.weikun.model.Account;
import com.weikun.model.Category;
import com.weikun.model.CategoryExample;
import com.weikun.service.IPetService;
import com.weikun.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;
import java.util.Map;


/**
 * Created by Administrator on 2016/9/3.
 */
@Controller
@RequestMapping(value = "/acc")
@SessionAttributes(value = {"username"})
public class AccountController {
    @Autowired
    private IUserService service;
    @Autowired
    private IPetService pservice;

    @RequestMapping(value="/lmain")
    public String loginMain(){
        System.out.print("ok");
        return "shop/login.ftl";

    }
    @RequestMapping(value="/rmain")
    public String rmain(Map map){
        Account account=new Account();
        map.put("account",account);


        queryC(map);

        return "shop/register.ftl";
    }

    private void queryC(Map map) {
        CategoryExample example=new CategoryExample();
        example.createCriteria().andCatidIsNotNull();
        List<Category> list=pservice.selectByExample(example);
        map.put("clist" ,list);
    }

    @RequestMapping(value="/register")
    public String register(@Validated @ModelAttribute("account") Account account,
                           BindingResult result, Map model){
        if(result.hasErrors()){
            queryC(model);
            return "shop/register.ftl";
        }
        account.getProfile().setUsername(account.getUsername());
        if(service.register(account)>0){//注册成功
            return "shop/login.ftl";
        }
        return null;

    }
    @RequestMapping(value="/login")
    public String login(Account account, Map map){
        Account user=service.login(account);
        if(user!=null){//登录成功
            map.put("username",user.getUsername());

            return "shop/main.ftl";
        }else{
            map.put("error","登录失败，请重新登录！");
            return "shop/login.ftl";
        }

    }


}
