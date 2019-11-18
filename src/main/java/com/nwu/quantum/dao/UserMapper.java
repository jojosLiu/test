package com.nwu.quantum.dao;

import com.nwu.quantum.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

    int deleteByPrimaryKey(String email);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String email);

    public User selectByEmailAndPwd(User record);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}



