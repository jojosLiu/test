package com.nwu.quantum.serviceImpl;
import com.nwu.quantum.common.DataUtils;
import com.nwu.quantum.dao.UserMapper;
import com.nwu.quantum.entity.User;
import com.nwu.quantum.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Date;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    /**
     * 用户登录
     * @param email 邮箱
     * @param password 密码
     * @return UserInfo 用户信息
     */
    @Override
    public User login(String email,String password){
        if (email ==null || password == null){
            //TODO异常处理后续完成
            System.out.println("邮箱或密码为空！");

        }
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);              //实例化user，传入邮箱和密码值
        User userInfo = userMapper.selectByEmailAndPwd(user);
        if (userInfo == null){
            //TODO异常处理后续完成
            System.out.println("邮箱或密码错误！");
        }
        return userInfo;

    }

    /**
     * 用户注册
     * @param email 邮箱
     * @param password 密码
     */
    @Override
    public  void  register(String email,String password){
        if(email==null || password== null)
        {
            //TODO异常处理后续完成
            System.out.println("邮箱和密码不能为空！");
        }
        User user = new User();
        Date RegistTime = DataUtils.getCurrentDate();
        user.setEmail(email);
        user.setPassword(password);
        user.setRegistTime(RegistTime);
        user.setRole(1);
        user.setStatus(1);
        int count = 0;
        count = userMapper.insert(user);
        if (count == 0) {
            //TODO异常处理后续完成
            System.out.println("注册失败！");
        }
        System.out.println("注册成功");
    }
}
