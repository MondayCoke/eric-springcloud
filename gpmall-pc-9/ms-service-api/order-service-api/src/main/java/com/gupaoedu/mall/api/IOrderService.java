package com.gupaoedu.mall.api;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface IOrderService {

    //http://order-service/order
    //method post
    //reuqest parameter . goosInfo , pomotionInfo
    @PostMapping("/order")
    String createOrder(@RequestParam String goodsInfo, @RequestParam String pomotionInfo);
}
