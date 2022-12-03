package com.changzer.wiki;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.changzer.wiki.entity.LoginUser;
import com.changzer.wiki.entity.User;
import com.changzer.wiki.mapper.MenuMapper;
import com.changzer.wiki.mapper.UserMapper;
import com.changzer.wiki.utils.RedisCache;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.List;

@SpringBootTest
class AppApplicationTests {

    @Autowired
    UserMapper userMapper;

    @Autowired
    RedisCache redisCache;
    @Test
    void contextLoads() {
        //List<User> users = userMapper.selectList(null);
        //System.out.println(users);

        String redisKey = "login:" + 2;
        LoginUser loginUser = redisCache.getCacheObject(redisKey);
    }

    @Test
    public void testPasswordEncoder(){
        PasswordEncoder ps = new BCryptPasswordEncoder();
        String encode = ps.encode("123456");
        //String encode2 = ps.encode("1234");
        System.out.println(encode);
        //System.out.println(encode2);
        //$2a$10$UViL.jTzZHy/m7K29SuwPenDT5s5XcfIoSHoEJImRBjbsnok3Y7Nu
        System.out.println(ps.matches("123456",
                "$2a$10$6/PCgbtMLf1qqBeAPWrWouIXljQ.ZX9sl6pGheRtm3P8n9bsZ34XG"));
    }

    @Autowired
    private MenuMapper menuMapper;
    @Test
    public void testSelectPermsByUserId(){
        List<String> list = menuMapper.selectPermsByUserId(2L);
        for (String userId : list){
            System.out.println(userId);
        }
    }
    //@Autowired
    //private UserMapper userMapper;
    @Test
    public void testss(){
        List<User> users = userMapper.selectList(new QueryWrapper<>());
        for(User i:users){
            System.out.println(users.toString());
        }
    }

}
