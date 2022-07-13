package com.ning.ying.inter;

import com.ning.ying.entity.User;

import java.util.List;

public interface UserInter {
    /**
     * 查询所有
     */
    List<Object> selectUser();

    /**
     * 查询登录用户
     */
    Object loginUser(User user);

    /**
     * 注册查询是否重复用户名
     */
    String selectUser(User user);

    /**
     * 添加用户
     */
    int addUser(User user);

    /**
     * 根据Id删除用户
     */
    int deleteId(int Id);
}