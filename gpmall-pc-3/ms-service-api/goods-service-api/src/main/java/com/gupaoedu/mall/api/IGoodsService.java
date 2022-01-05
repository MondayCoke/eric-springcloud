package com.gupaoedu.mall.api;


import org.springframework.web.bind.annotation.GetMapping;

public interface IGoodsService {

    @GetMapping("/goods")
    String getGoodsById();
}
