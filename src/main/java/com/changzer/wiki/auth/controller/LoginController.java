package com.changzer.wiki.auth.controller;/**
 * @author lingqu
 * @date 2022/3/1
 * @apiNote
 */

import com.changzer.wiki.auth.entity.auth.User;
import com.changzer.wiki.auth.service.LoginService;
import com.changzer.wiki.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 *@description TODO
 *@author zzhi
 *@createDate 2022/3/1
 *@version 1.0
 */

@RestController
public class LoginController {

    @Autowired
    private LoginService loginService;

    @PostMapping("user/login")
    public Result login(@RequestBody User user){
        return loginService.login(user);
    }

    @PostMapping("user/register")
    public Result register(@RequestBody User user){
        return loginService.register(user);
    }

    @GetMapping("user/logout")
    public Result logout(){
        return loginService.logout();
    }
}
