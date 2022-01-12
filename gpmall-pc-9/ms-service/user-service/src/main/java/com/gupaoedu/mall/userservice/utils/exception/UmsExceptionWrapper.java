package com.gupaoedu.mall.userservice.utils.exception;

import com.gupaoedu.mall.core.AbstractResponse;
import com.gupaoedu.mall.enums.UMSResCodeEnum;
import com.gupaoedu.mall.exception.BizException;
import com.gupaoedu.mall.exception.ValidException;
import lombok.extern.slf4j.Slf4j;

import java.io.Serializable;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Slf4j
public class UmsExceptionWrapper implements Serializable {

    public static void handlerException2Biz(AbstractResponse response,Exception e){
        if(!(e instanceof Exception)){
            return;
        }
        if(e instanceof BizException){
            response.setCode(((BizException) e).getErrorCode());
            response.setMsg(((BizException) e).getErrorMessage());
        }
        if(e instanceof ValidException){
            response.setCode(((ValidException) e).getErrorCode());
            response.setMsg(((ValidException) e).getErrorMessage());
        }else if (e instanceof Exception){
            response.setCode(UMSResCodeEnum.SYSTEM_EXCEPTION.getCode());
            response.setMsg(UMSResCodeEnum.SYSTEM_EXCEPTION.getMsg());
        }
        log.error("[UmsExceptionWrapper.handlerException2Biz],Exception="+e.getMessage(),e);
    }
}
