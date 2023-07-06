package com.syc.cafe.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.syc.cafe.entity.Employee;
import com.syc.cafe.mapper.EmployeeMapper;
import com.syc.cafe.service.EmployeeService;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper,Employee> implements EmployeeService{
}
