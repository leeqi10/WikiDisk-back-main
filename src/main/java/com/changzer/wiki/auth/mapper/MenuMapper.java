package com.changzer.wiki.auth.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.changzer.wiki.auth.entity.auth.Menu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author lingqu
 * @date 2022/3/6
 * @apiNote
 */
@Mapper
public interface MenuMapper extends BaseMapper<Menu> {
    List<String> selectPermsByUserId(Long id);
}
