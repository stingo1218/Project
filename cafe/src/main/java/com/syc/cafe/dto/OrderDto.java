package com.syc.cafe.dto;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.syc.cafe.entity.OrderDetail;
import com.syc.cafe.entity.Orders;
import lombok.Data;
import java.util.List;

/**
 * @author LJM
 * @create 2022/5/3
 */
@Data
public class OrderDto extends Orders  {

    private List<OrderDetail> orderDetails;
}
