package com.gupaoedu.mall.api;

import com.gupaoedu.mall.dto.IndexModuleContentResponse;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 *
 * 提供首页商品配置信息查询的服务。
 **/

@RequestMapping("/mk/content")
public interface IContentService {

    @GetMapping
    IndexModuleContentResponse content();

}
