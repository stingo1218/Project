package com.syc.cafe.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.syc.cafe.entity.User;
import com.syc.cafe.mapper.UserMapper;
import com.syc.cafe.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper,User> implements UserService{
}
