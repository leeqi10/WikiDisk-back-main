package com.changzer.wiki.auth.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.changzer.wiki.auth.entity.auth.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
