package com.gupaoedu.mall.exception;

import lombok.Data;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Data
public class ValidException extends RuntimeException{

    private String errorCode;
    private String errorMessage;

    public ValidException() {
        super();
    }

    public ValidException(String errorCode) {
        super(errorCode);
    }

    public ValidException(Throwable cause){
        super(cause);
    }

    public ValidException(String errorCode, Throwable cause){
        super(cause);
        this.errorCode=errorCode;
    }
    public ValidException(String errorCode, String message){
        super();
        this.errorCode=errorCode;
        this.errorMessage=message;
    }
    public ValidException(String errorCode, String errorMessage, Throwable cause){
        super(cause);
        this.errorCode=errorCode;
        this.errorMessage=errorMessage;
    }
}
