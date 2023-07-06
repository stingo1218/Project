package com.syc.cafe.entity;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * 订单明细
 */
@Data
public class ScheduleDetail implements Serializable {

    private static final long serialVersionUID = 1L;

    //名称
    private String dishName;

    //订单id
    private Long orderId;

    //顺序id
    private Long id;

    //口味
    private String dishFlavor;

    //数量
    private Integer dishNumber;

    //菜品状态 1待付款，2待制作，3已制作，4已完成，5已取消
    private Integer dishStatus;

    //下单时间
    private LocalDateTime orderTime;

    //备注
    private String remark;

    //桌号
    private String address;

    //分类名称
    private String categoryName;

}
