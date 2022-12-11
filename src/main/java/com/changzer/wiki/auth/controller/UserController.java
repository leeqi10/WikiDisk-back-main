package com.changzer.wiki.auth.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.changzer.wiki.auth.entity.auth.User;
import com.changzer.wiki.auth.entity.dto.UserPageDTO;
import com.changzer.wiki.auth.entity.dto.UserUpdateAvatarDTO;
import com.changzer.wiki.auth.entity.dto.UserUpdatePasswordDTO;
import com.changzer.wiki.auth.mapper.UserMapper;
import com.changzer.wiki.auth.service.LoginService;
import com.changzer.wiki.auth.service.UserService;
import com.changzer.wiki.utils.DozerUtils;
import com.changzer.wiki.utils.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 前端控制器
 * 用户
 */
@Slf4j
@Validated
@RestController
@RequestMapping("/user")
@Api(value = "User", tags = "用户")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private DozerUtils dozer;
    @Autowired
    private LoginService loginService;

    /**
     * 分页查询用户
     */
    @ApiOperation(value = "分页查询用户", notes = "分页查询用户")
    @GetMapping("/page")
    public Result<Page<User>> page(@RequestBody UserPageDTO userPage) {
        userPage.verify();
        return userService.getPage(userPage);
    }

    /**
     * 查询用户
     */
    @ApiOperation(value = "查询用户", notes = "查询用户")
    @GetMapping("/{id}")
    public Result<User> get(@PathVariable Long id) {
        return new Result<User>(200,"成功",userService.getById(id));
    }

    @ApiOperation(value = "查询所有用户", notes = "查询所有用户")
    @GetMapping("/find")
    public Result<List<Long>> findAllUserId() {
        return new Result<List<Long>>(200,"成功",userService.list().stream().mapToLong(User::getId).boxed().collect(Collectors.toList()));
    }

    ///**
    // * 新增用户
    // */
    @ApiOperation(value = "新增用户", notes = "新增用户不为空的字段")
    @PostMapping
    public Result<User> save(@RequestBody UserPageDTO userPage) {
        User user = dozer.map(userPage, User.class);
        return userService.saveUser(user);
    }

    /**
     * 修改用户
     */
    @ApiOperation(value = "修改用户", notes = "修改用户不为空的字段")
    @PutMapping
    public Result<User> update(@RequestBody UserPageDTO userPage) {
        User user = dozer.map(userPage, User.class);
        return userService.updateUser(user);
    }

    @ApiOperation(value = "修改头像", notes = "修改头像")
    @PutMapping("/avatar")
    public Result<User> avatar(@RequestBody UserUpdateAvatarDTO data) {
        User user = dozer.map(data, User.class);
        return userService.updateUser(user);
    }

    @ApiOperation(value = "修改密码", notes = "修改密码")
    @PutMapping("/password")
    public Result<Boolean> updatePassword(@RequestBody UserUpdatePasswordDTO data) {
        User user = dozer.map(data, User.class);
        return userService.updatePassword(user);
    }

    //@ApiOperation(value = "重置密码", notes = "重置密码")
    //@GetMapping("/reset")
    //public Result<Boolean> resetTx(@RequestParam("ids[]") List<Long> ids) {
    //    userService.reset(ids);
    //    return success();
    //}
    //
    ///**
    // * 删除用户
    // */
    //@ApiOperation(value = "删除用户", notes = "根据id物理删除用户")
    //@DeleteMapping
    //public Result<Boolean> delete(@RequestParam("ids[]") List<Long> ids) {
    //    userService.remove(ids);
    //    return success(true);
    //}
    //
    //
    ///**
    // * 单体查询用户
    // */
    //@ApiOperation(value = "查询用户详细", notes = "查询用户详细")
    //@PostMapping(value = "/anno/id/{id}")
    //public Result<User> getById(@PathVariable Long id, @RequestBody UserQuery query) {
    //    User user = userService.getById(id);
    //    if (user == null) {
    //        return success(null);
    //    }
    //    SysUser sysUser = dozer.map(user, SysUser.class);
    //
    //    if (query.getFull() || query.getOrg()) {
    //        sysUser.setOrg(dozer.map(orgService.getById(user.getOrgId()), SysOrg.class));
    //    }
    //    if (query.getFull() || query.getStation()) {
    //        sysUser.setStation(dozer.map(stationService.getById(user.getStationId()), SysStation.class));
    //    }
    //
    //    if (query.getFull() || query.getRoles()) {
    //        List<Role> list = roleService.findRoleByUserId(id);
    //        sysUser.setRoles(dozer.mapList(list, SysRole.class));
    //    }
    //
    //    return success(sysUser);
    //}
    //
    ///**
    // * 查询角色的已关联用户
    // *
    // * @param roleId  角色id
    // * @param keyword 账号account或名称name
    // */
    //@ApiOperation(value = "查询角色的已关联用户", notes = "查询角色的已关联用户")
    //@GetMapping(value = "/role/{roleId}")
    //public Result<UserRoleDTO> findUserByRoleId(@PathVariable("roleId") Long roleId, @RequestParam(value = "keyword", required = false) String keyword) {
    //    List<User> list = userService.findUserByRoleId(roleId, keyword);
    //    List<Long> idList = list.stream().mapToLong(User::getId).boxed().collect(Collectors.toList());
    //    return success(UserRoleDTO.builder().idList(idList).userList(list).build());
    //}
}
