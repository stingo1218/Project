package com.syc.cafe.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.syc.cafe.entity.OrderDetail;
import com.syc.cafe.entity.Orders;
import com.syc.cafe.entity.ShoppingCart;

import java.util.List;

public interface OrderService extends IService<Orders> {

    /**
     * 用户下单
     * @param orders
     */
    public void submit(Orders orders);

    List<ShoppingCart> againAdd(List<OrderDetail> orderDetailList);

}
