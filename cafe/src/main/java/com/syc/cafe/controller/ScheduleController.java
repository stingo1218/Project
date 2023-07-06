package com.syc.cafe.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.syc.cafe.common.BaseContext;
import com.syc.cafe.common.R;
import com.syc.cafe.dto.OrderDto;
import com.syc.cafe.entity.OrderDetail;
import com.syc.cafe.entity.Orders;
import com.syc.cafe.entity.Category;
import com.syc.cafe.service.CategoryService;

import com.syc.cafe.entity.ScheduleDetail;
import com.syc.cafe.entity.ShoppingCart;
import com.syc.cafe.service.OrderService;
import com.syc.cafe.service.OrderDetailService;
import com.syc.cafe.dto.OrderDto;
import com.syc.cafe.service.ScheduleDetailService;
import com.syc.cafe.service.ShoppingCartService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;



@Slf4j
@RestController
@RequestMapping("/schedule")
public class ScheduleController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private ScheduleDetailService scheduleDetailService;
    @Autowired
    private ShoppingCartService shoppingCartService;



//    /**
//     * 后台查询订单明细
//     * @param page
//     * @param pageSize
//     * @param orderId
//     * @param beginTime
//     * @param endTime
//     * @return
//     */
//    @GetMapping("/page")
//    public R<Page> page(int page, int pageSize, Long orderId, String beginTime, String endTime){
//        //分页构造器对象
//        Page<ScheduleDetail> pageInfo = new Page<>(page,pageSize);
//        //构造条件查询对象
//        LambdaQueryWrapper<ScheduleDetail> queryWrapper = new LambdaQueryWrapper<>();
//        queryWrapper.like(orderId!=null,ScheduleDetail::getOrderId,orderId)
//                .gt(StringUtils.isNotEmpty(beginTime),ScheduleDetail::getOrderTime,beginTime)
//                .lt(StringUtils.isNotEmpty(endTime),ScheduleDetail::getOrderTime,endTime);
//
//        scheduleDetailService.page(pageInfo,queryWrapper);
//        return R.success(pageInfo);
//    }

    /**
     * 后台查询订单明细
     * @param page
     * @param pageSize
     * @param orderId
     * @return
     */
    @GetMapping("/page")
    public R<Page> page(int page, int pageSize, Long orderId) {
        // 分页构造器对象
        Page<ScheduleDetail> pageInfo = new Page<>(page, pageSize);

        // 构造条件查询对象
        QueryWrapper<ScheduleDetail> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(orderId != null, "order_id", orderId)
                .ne("dish_status", 4)  // 排除dish_status为4的记录
                .orderByAsc("(CASE WHEN category_name = '饮品' THEN 0 WHEN category_name IN ('主食', '甜品') THEN 1 ELSE 2 END)")
                .orderByAsc("dish_name")
                .orderByAsc("order_time");

        scheduleDetailService.page(pageInfo, queryWrapper);
        return R.success(pageInfo);
    }






    //修改菜品状态
    @PutMapping
    public R<String> orderStatusChange(@RequestBody Map<String,String> map){

        String id = map.get("id");
        Long orderId = Long.parseLong(id);
        Integer status = Integer.parseInt(map.get("dishStatus"));

        if(orderId == null || status==null){
            return R.error("传入信息不合法");
        }
//        Orders orders = orderService.getById(orderId);
        ScheduleDetail scheduleDetail=scheduleDetailService.getById(orderId);
//        orders.setStatus(status);
        scheduleDetail.setDishStatus(status);
//        orderService.updateById(orders);
        scheduleDetailService.updateById(scheduleDetail);

        return R.success("订单状态修改成功");

    }

}
