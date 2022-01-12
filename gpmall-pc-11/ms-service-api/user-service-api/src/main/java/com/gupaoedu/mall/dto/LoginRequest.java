package com.gupaoedu.mall.dto;

import com.gupaoedu.mall.core.AbstractRequest;
import com.gupaoedu.mall.enums.UMSResCodeEnum;
import com.gupaoedu.mall.exception.ValidException;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Data
public class LoginRequest extends AbstractRequest {

    private String userName;
    private String password;

    public void requestCheck(){
        if(StringUtils.isBlank(this.userName)||StringUtils.isBlank(this.password)){
            throw new ValidException(UMSResCodeEnum.SYS_PARAM_NOT_RIGHT.getCode(),UMSResCodeEnum.SYS_PARAM_NOT_RIGHT.getMsg());
        }
    }
}
