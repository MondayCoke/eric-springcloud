package com.gupaoedu.mall.api;

import com.gupaoedu.mall.dto.LoginRequest;
import com.gupaoedu.mall.dto.LoginResponse;
import com.gupaoedu.mall.dto.ValidTokenResponse;
import org.springframework.web.bind.annotation.*;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@RequestMapping("/ums/auth")
public interface IAuthService {

    /**
     * 用户密码认证
     * @param request
     * @return
     */
    @PostMapping
    LoginResponse login(@RequestBody LoginRequest request);

    /**
     * token验证
     * @param token
     * @return
     */
    @GetMapping
    ValidTokenResponse validToken(@RequestParam String token);


}
