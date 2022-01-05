package com.gupaoedu.malll.gpmallportal.controller;


import com.gupaoedu.mall.api.IGoodsService;
import com.gupaoedu.mall.api.IOrderService;
import com.gupaoedu.mall.api.IPromotionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Slf4j
@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private IGoodsService goodsService;

    @Autowired
    private IPromotionService promotionService; //instance?  Proxy$

    @Autowired
    private IOrderService orderService;

    @GetMapping
    public String order(){
        log.info("begin do order");
        String goods=goodsService.getGoodsById();
        String promotion=promotionService.getPromotionById();
        String result=orderService.createOrder(goods,promotion);
        return result;
    }
}
