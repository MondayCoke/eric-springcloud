package com.gupaoedu.malll.gpmallportal.controller;


import com.gupaoedu.mall.api.IGoodsService;
import com.gupaoedu.mall.api.IOrderService;
import com.gupaoedu.mall.api.IPromotionService;
import com.gupaoedu.mall.feignclient.IGoodsServiceFeignClient;
import com.gupaoedu.mall.feignclient.IOrderServiceFeignClient;
import com.gupaoedu.mall.feignclient.IPromotionServiceFeignClient;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RefreshScope
@Slf4j
@RestController
@RequestMapping("/order")
public class OrderController {

    /**
     * bean解析的时候，解析@Value注解
     * 从Environment中获取属性赋值到当前的变量中
     */

    @Value("${switch:false}")
    private boolean fallbackSwitch;

    @Autowired
    private IGoodsServiceFeignClient goodsService;

    @Autowired
    private IPromotionServiceFeignClient promotionService; //instance?  Proxy$

    @Autowired
    private IOrderServiceFeignClient orderService;

    @GetMapping("/{id}")
    public String order(@PathVariable("id")int id){
        log.info("begin do order,{}",fallbackSwitch);
        if(!fallbackSwitch) {
            String goods = goodsService.getGoodsById(id); //
            String promotion = promotionService.getPromotionById();
            String result = orderService.createOrder(goods, promotion);
            return result;
        }else{
            return "服务降级";
        }
    }
}
