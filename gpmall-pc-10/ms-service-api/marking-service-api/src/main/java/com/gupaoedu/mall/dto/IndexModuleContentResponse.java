package com.gupaoedu.mall.dto;

import com.gupaoedu.mall.core.AbstractResponse;
import lombok.Data;

import java.util.List;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Data
public class IndexModuleContentResponse extends AbstractResponse {

    List<PanelDto> panelDtos;
}
