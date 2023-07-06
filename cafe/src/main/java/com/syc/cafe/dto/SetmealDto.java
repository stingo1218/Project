package com.syc.cafe.dto;

import com.syc.cafe.entity.Setmeal;
import com.syc.cafe.entity.SetmealDish;
import lombok.Data;
import java.util.List;

@Data
public class SetmealDto extends Setmeal {

    private List<SetmealDish> setmealDishes;

    private String categoryName;
}
