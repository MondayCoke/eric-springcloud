package com.gupaoedu.mall.userservice.utils;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.gupaoedu.mall.enums.UMSResCodeEnum;
import com.gupaoedu.mall.exception.ValidException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.joda.time.DateTime;

import java.util.concurrent.TimeUnit;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Slf4j
public class JwtTokenUtil {

    private static final String SECRET_KEY="436319c6-d23f-4c18-a4f7-f1dc306a6471";  //对账加密的密钥

    private static final Algorithm ALGORITHM=Algorithm.HMAC256(SECRET_KEY);

    private static final String ISSUER="mic";

    private static AESUtil aesUtil=new AESUtil();

    //生成token，用来保存会话状态
    public static String generateToken(String content){
        if(StringUtils.isEmpty(content)){
            throw new ValidException(UMSResCodeEnum.SYS_PARAM_NOT_RIGHT.getCode(),UMSResCodeEnum.SYS_PARAM_NOT_RIGHT.getMsg());
        }
        // jti: jwt的唯一标记
        // iss：JWT的签发主体
        // exp: 时间戳，过期时间
        // iat: jwt的签发时间
        // sub: jwt的所有者
        //其他自定义属性
        String token=JWT.create().withIssuer(ISSUER)
                .withExpiresAt(DateTime.now().plusDays(1).toDate())
                .withClaim("name",aesUtil.encrypt(content)).sign(ALGORITHM);
        return token;
    }

    //拿到token后进行验证和解析
    public static String verifyAndParseToken(String token){
        if(StringUtils.isEmpty(token)){
            throw new ValidException(UMSResCodeEnum.SYS_PARAM_NOT_RIGHT.getCode(),UMSResCodeEnum.SYS_PARAM_NOT_RIGHT.getMsg());
        }
        JWTVerifier verifier=JWT.require(ALGORITHM).withIssuer(ISSUER).build();
        try {
            DecodedJWT decodedJWT = verifier.verify(token);
            log.info("[TokenDemo.verifyAndParseToken] ,ISSUER:{},ALGORITHM：{}, PLAYLOAD:{}",
                    decodedJWT.getIssuer(),decodedJWT.getAlgorithm(),decodedJWT.getClaim("name").asString());
            return aesUtil.decrypt(decodedJWT.getClaim("name").asString());
        }catch (Exception e){
            log.error("[TokenDemo.verifyAndParseToken] ,Occur Exception",e);
            throw new ValidException(UMSResCodeEnum.ACCESSTOKEN_VALID_FAILED.getCode(),UMSResCodeEnum.ACCESSTOKEN_VALID_FAILED.getMsg(e.getMessage()));
        }
    }
}
