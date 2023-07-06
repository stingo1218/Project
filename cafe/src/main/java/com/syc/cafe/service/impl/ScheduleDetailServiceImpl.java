package com.syc.cafe.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.syc.cafe.entity.OrderDetail;
import com.syc.cafe.entity.ScheduleDetail;
import com.syc.cafe.mapper.OrderDetailMapper;
import com.syc.cafe.mapper.ScheduleDetailMapper;
import com.syc.cafe.service.OrderDetailService;
import com.syc.cafe.service.ScheduleDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleDetailServiceImpl extends ServiceImpl<ScheduleDetailMapper, ScheduleDetail> implements ScheduleDetailService {
    @Autowired
    private OrderDetailService orderDetailService;

}