package com.changzer.wiki.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.changzer.wiki.entity.Menu;

import java.util.List;

/**
 * @author lingqu
 * @date 2022/3/6
 * @apiNote
 */
public interface MenuMapper extends BaseMapper<Menu> {
    List<String> selectPermsByUserId(Long id);
}
