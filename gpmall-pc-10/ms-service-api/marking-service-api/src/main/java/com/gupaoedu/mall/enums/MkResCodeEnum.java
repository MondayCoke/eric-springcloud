package com.gupaoedu.mall.enums;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 *
 **/
public enum MkResCodeEnum {
    SYS_SUCCESS("000000","成功"),
    SYS_PARAM_NOT_RIGHT("002001","传入参数不合法"),
    SYS_PARAM_NOT_NULL("002002","必要参数不能为空"),
    QUERY_DATA_NOT_EXIST("002003","查询数据不存在"),

    SYSTEM_EXCEPTION("002999","系统繁忙，请稍候重试")
    ;

    private String code;
    private String msg;

    MkResCodeEnum(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public String getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
    public String getMsg(String detailDesc){
        return msg+":"+detailDesc;
    }
}
