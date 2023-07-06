package com.syc.cafe.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.syc.cafe.entity.ShoppingCart;

public interface ShoppingCartService extends IService<ShoppingCart> {
    void clean();

}
