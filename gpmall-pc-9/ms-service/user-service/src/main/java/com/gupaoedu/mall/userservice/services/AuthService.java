package com.gupaoedu.mall.userservice.services;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gupaoedu.mall.api.IAuthService;
import com.gupaoedu.mall.dto.LoginRequest;
import com.gupaoedu.mall.dto.LoginResponse;
import com.gupaoedu.mall.dto.ValidTokenResponse;
import com.gupaoedu.mall.enums.UMSResCodeEnum;
import com.gupaoedu.mall.exception.ValidException;
import com.gupaoedu.mall.userservice.dal.mapper.UmsUserMapper;
import com.gupaoedu.mall.userservice.dal.model.UmsUser;
import com.gupaoedu.mall.userservice.utils.JwtTokenUtil;
import com.gupaoedu.mall.userservice.utils.constants.UmsConstants;
import com.gupaoedu.mall.userservice.utils.exception.UmsExceptionWrapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RestController;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Slf4j
@RestController
public class AuthService implements IAuthService {

    @Autowired
    UmsUserMapper userMapper;

    @Override
    public LoginResponse login(LoginRequest request) {
        log.info("[AuthService.login()] , begin execute!");
        LoginResponse response=new LoginResponse();
        try {
            request.requestCheck();
            response=doLogin(request);
        }catch (Exception e){
            log.error("[AuthService.login()] , Occur Exception!",e);
            UmsExceptionWrapper.handlerException2Biz(response,e);
        }
        return response;
    }

    @Override
    public ValidTokenResponse validToken(String token) {
        ValidTokenResponse response=new ValidTokenResponse();
        try {
            if (StringUtils.isEmpty(token)) {
                throw new ValidException(UMSResCodeEnum.SYS_PARAM_NOT_RIGHT.getCode(), UMSResCodeEnum.SYS_PARAM_NOT_RIGHT.getMsg());
            }
            String content=JwtTokenUtil.verifyAndParseToken(token);
            response.setUserName(content);
            response.setCode(UMSResCodeEnum.SYS_SUCCESS.getCode());
            response.setMsg(UMSResCodeEnum.SYS_SUCCESS.getMsg());
        }catch (Exception e){
            log.error("[AuthService.login()] , Occur Exception!",e);
            UmsExceptionWrapper.handlerException2Biz(response,e);
        }
        return response;
    }

    private LoginResponse doLogin(LoginRequest request){
        LoginResponse response=new LoginResponse();
        QueryWrapper<UmsUser> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("username",request.getUserName()).eq("state", UmsConstants.USER_STATE_ENABLE);
        UmsUser user=userMapper.selectOne(queryWrapper); //根据用户名获取用户信息
        if(user==null){
            throw new ValidException(UMSResCodeEnum.USERORPASSWORD_ERROR.getCode(),UMSResCodeEnum.USERORPASSWORD_ERROR.getMsg());
        }
        if(!DigestUtils.md5DigestAsHex(request.getPassword().getBytes()).equals(user.getPassword())){
            throw new ValidException(UMSResCodeEnum.USERORPASSWORD_ERROR.getCode(),UMSResCodeEnum.USERORPASSWORD_ERROR.getMsg());
        }
        response.setPhone(user.getPhone());
        response.setUsername(user.getUsername());
        response.setAccessToken(JwtTokenUtil.generateToken(user.getUsername()));
        response.setCode(UMSResCodeEnum.SYS_SUCCESS.getCode());
        response.setMsg(UMSResCodeEnum.SYS_SUCCESS.getMsg());
        return response;
    }
}
