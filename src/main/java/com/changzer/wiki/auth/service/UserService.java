package com.changzer.wiki.auth.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.changzer.wiki.auth.entity.auth.User;
import com.changzer.wiki.auth.entity.dto.UserPageDTO;
import com.changzer.wiki.utils.Result;


/**
 * @author changzer
 * @date 2022/12/5
 * @apiNote
 */
public interface UserService extends IService<User> {
    Result<Page<User>> getPage(UserPageDTO userPage);

    Result<User> saveUser(User user);

    Result<User> updateUser(User user);

    Result<Boolean> updatePassword(User user);
}
