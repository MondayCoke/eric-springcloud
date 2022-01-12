package com.gupaoedu.mall.exception;

import lombok.Data;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Data
public class BizException extends RuntimeException{

    private String errorCode;
    private String errorMessage;

    public BizException() {
        super();
    }

    public BizException(String errorCode) {
        super(errorCode);
    }

    public BizException(Throwable cause){
        super(cause);
    }

    public BizException(String errorCode,Throwable cause){
        super(cause);
        this.errorCode=errorCode;
    }
    public BizException(String errorCode,String message){
        super();
        this.errorCode=errorCode;
        this.errorMessage=message;
    }
    public BizException(String errorCode,String errorMessage,Throwable cause){
        super(cause);
        this.errorCode=errorCode;
        this.errorMessage=errorMessage;
    }
}
