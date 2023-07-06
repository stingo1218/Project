package com.syc.cafe.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.syc.cafe.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User>{
}
