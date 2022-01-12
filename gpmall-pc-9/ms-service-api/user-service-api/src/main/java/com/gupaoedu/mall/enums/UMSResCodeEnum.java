package com.gupaoedu.mall.enums;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 * 003 - user模块
 **/
public enum UMSResCodeEnum {
    SYS_SUCCESS("000000","成功"),
    SYS_PARAM_NOT_RIGHT("003001","传入参数不合法"),
    SYS_PARAM_NOT_NULL("003002","必要参数不能为空"),
    QUERY_DATA_NOT_EXIST("003003","查询数据不存在"),
    USERORPASSWORD_ERROR("003004","用户名或者密码错误"),
    ACCESSTOKEN_VALID_FAILED("003005","token校验失败"),
    SYSTEM_EXCEPTION("003999","系统繁忙，请稍候重试")
    ;

    private String code;
    private String msg;

    UMSResCodeEnum(String code, String msg) {
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
