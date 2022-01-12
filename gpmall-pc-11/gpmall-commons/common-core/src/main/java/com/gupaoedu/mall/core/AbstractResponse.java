package com.gupaoedu.mall.core;

import lombok.Data;

import java.io.Serializable;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Data
public class AbstractResponse implements Serializable {

    private String code;
    private String msg;

}
