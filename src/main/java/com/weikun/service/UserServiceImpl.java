package com.weikun.service;

import com.weikun.model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.weikun.dao.*;

/**
 * Created by Administrator on 2016/9/5.
 */
@Service
public class UserServiceImpl implements IUserService{
    @Autowired
    private AccountMapper dao;
    @Autowired
    private ProfileMapper pdao;
    public Account login(Account record) {

        return dao.login(record);
    }

    public int register(Account record) {
        try {
            dao.insert(record);
            pdao.insert(record.getProfile());
            return 1;
        }catch (Exception e){
           e.printStackTrace();
        }


        return 0;
    }

}
