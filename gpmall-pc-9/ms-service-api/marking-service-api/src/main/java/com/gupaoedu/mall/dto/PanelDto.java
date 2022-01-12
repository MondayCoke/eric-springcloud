package com.gupaoedu.mall.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Data
public class PanelDto implements Serializable {

    private Integer id;
    private String name;
    private Integer type;
    private Integer position;
    private Integer limitNum;
    private Integer status;
    private String remark;
    private List<PanelContentItemDto> panelContentItems;
}
