package com.syc.cafe.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.syc.cafe.entity.Category;

public interface CategoryService extends IService<Category> {

    public void remove(Long id);

}
