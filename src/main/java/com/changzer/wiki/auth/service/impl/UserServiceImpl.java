package com.changzer.wiki.auth.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
//import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.changzer.wiki.auth.entity.auth.LoginUser;
import com.changzer.wiki.auth.entity.auth.User;
import com.changzer.wiki.auth.entity.dto.UserPageDTO;
import com.changzer.wiki.auth.mapper.UserMapper;
import com.changzer.wiki.auth.service.UserService;
import com.changzer.wiki.utils.JwtUtil;
import com.changzer.wiki.utils.RedisCache;
import com.changzer.wiki.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/**
 *
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User>
        implements UserService {


    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private RedisCache redisCache;

    @Override
    public Result<Page<User>> getPage(UserPageDTO userPage) {
        Page<User> page = new Page<>(userPage.getCurrent(), userPage.getPageSize());
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        //WrapperUtils.addLike(queryWrapper,User::getNickname, userPage.getNickname());
        if (userPage.getNickname() != null && !"".equals(userPage.getNickname())) {
            queryWrapper.like(User::getNickname, userPage.getNickname());
        }
        if (userPage.getEmail() != null && !"".equals(userPage.getEmail())) {
            queryWrapper.like(User::getEmail, userPage.getEmail());
        }
        if (userPage.getMajor() != null && !"".equals(userPage.getMajor())) {
            queryWrapper.like(User::getMajor, userPage.getMajor());
        }
        if (userPage.getDirection() != null && !"".equals(userPage.getDirection())) {
            queryWrapper.like(User::getDirection, userPage.getDirection());
        }
        if (userPage.getGrade() != null && !"".equals(userPage.getGrade())) {
            queryWrapper.like(User::getGrade, userPage.getGrade());
        }

        Page<User> userpages = userMapper.selectPage(page, queryWrapper);
        return new Result<Page<User>>(200, "成功", userpages);
    }

    @Override
    public Result<User> saveUser(User user) {

        //判断用户名是否已经存在了
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(User::getUsername, user.getUsername());
        User hasUser = userMapper.selectOne(queryWrapper);
        if (!Objects.isNull(hasUser)){
            return new Result<User>(403,"注册失败，该用户已存在");
        }

        //加密密码
        PasswordEncoder ps = new BCryptPasswordEncoder();
        String passwordEncoder = ps.encode(user.getPassword());
        user.setPassword(passwordEncoder);

        //得到执行人的id(如果可以每个人注册则不需要这个，并且取消注册接口的拦截)
        UsernamePasswordAuthenticationToken authentication = (UsernamePasswordAuthenticationToken) SecurityContextHolder.getContext().getAuthentication();
        LoginUser principal = (LoginUser) authentication.getPrincipal();
        Long id = principal.getUser().getId();
        user.setCreateBy(id);
        userMapper.insert(user);
        return new Result<User>(200,"注册成功");
    }

    @Override
    public Result<User> updateUser(User user) {
        userMapper.updateById(user);
        return new Result<User>(200,"成功");
    }

    @Override
    public Result<Boolean> updatePassword(User user) {
        //加密密码
        PasswordEncoder ps = new BCryptPasswordEncoder();
        String passwordEncoder = ps.encode(user.getPassword());
        user.setPassword(passwordEncoder);
        userMapper.updateById(user);
        return new Result<Boolean>(200,"成功");
    }

}




