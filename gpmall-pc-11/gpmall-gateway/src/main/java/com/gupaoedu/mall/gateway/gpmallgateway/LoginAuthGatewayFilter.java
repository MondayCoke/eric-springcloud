package com.gupaoedu.mall.gateway.gpmallgateway;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gupaoedu.mall.core.CommonResponse;
import com.gupaoedu.mall.dto.ValidTokenResponse;
import com.gupaoedu.mall.enums.UMSResCodeEnum;
import com.gupaoedu.mall.feignclient.IAuthServiceFeignClient;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.io.buffer.DataBuffer;
import org.springframework.http.HttpStatus;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.nio.charset.StandardCharsets;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Slf4j
@Component
public class LoginAuthGatewayFilter implements GlobalFilter {

    @Autowired
    IAuthServiceFeignClient authServiceFeignClient;

    @Autowired
    IgnoredUrlsProperties ignoredUrlsProperties;

    @Override
    public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {
        ServerHttpRequest request=exchange.getRequest();
        String access_token=request.getHeaders().getFirst("access_token");
        //过滤不需要拦截的url
        if(ignoredUrlsProperties.getUrls().contains(request.getURI().getPath())){
            return chain.filter(exchange);
        }
        if(StringUtils.isEmpty(access_token)){
            return onError(exchange,"尚未登录");
        }
        ValidTokenResponse response=authServiceFeignClient.validToken(access_token);
        if(UMSResCodeEnum.SYS_SUCCESS.getCode().equals(response.getCode())){
            //把解析到的username放到header中往下传递
            ServerHttpRequest shr=request.mutate().header("username",response.getUserName()).build();
            return chain.filter(exchange.mutate().request(shr).build());
        }else{
            return onError(exchange,response.getMsg());
        }
    }
    private Mono<Void> onError(ServerWebExchange exchange,String msg){
        ServerHttpResponse response=exchange.getResponse();
        response.setStatusCode(HttpStatus.UNAUTHORIZED);
        response.getHeaders().add("Content-Type","application/json;charset=UTF-8");
        CommonResponse res=CommonResponse.error(HttpStatus.UNAUTHORIZED.value(),msg);
        ObjectMapper objectMapper=new ObjectMapper();
        try {
            String resStr=objectMapper.writeValueAsString(res);
            DataBuffer buffer=response.bufferFactory().wrap(resStr.getBytes(StandardCharsets.UTF_8));
            return response.writeWith(Flux.just(buffer));
        } catch (JsonProcessingException e) {
            log.error("LoginAuthGatewayFilter Occur Exception",e);
            e.printStackTrace();
        }
        return null;
    }
}
