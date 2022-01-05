package com.gupaoedu.mall.gateway.gpmallgateway;

import org.springframework.cloud.gateway.handler.predicate.AbstractRoutePredicateFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;

import java.util.Arrays;
import java.util.List;
import java.util.function.Predicate;

/**
 * 根据Header中，带有Authorization
 */
@Component
public class AuthRoutePredicateFactory extends AbstractRoutePredicateFactory<AuthRoutePredicateFactory.Config> {

    public static final String NAME_KEY="name";

    public AuthRoutePredicateFactory() {
        super(Config.class);
    }

    @Override
    public List<String> shortcutFieldOrder() {
        return Arrays.asList(NAME_KEY);
    }

    @Override
    public Predicate<ServerWebExchange> apply(Config config) {

        return exchange -> {
            HttpHeaders headers=exchange.getRequest().getHeaders();
            List<String> header=headers.get(config.getName());
            return header!=null&&header.size()>0;
        };
    }

    public static class Config{

        private String name;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }


}
