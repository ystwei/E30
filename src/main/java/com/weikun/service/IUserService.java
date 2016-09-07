package com.weikun.service;

import com.weikun.model.Account;


/**
 * Created by Administrator on 2016/9/5.
 */

public interface IUserService {
    Account login( Account record);
    int register(Account record);
}
