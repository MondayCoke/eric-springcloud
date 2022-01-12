package com.gupaoedu.mall.dto;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Data
public class PanelContentItemDto implements Serializable {

    private Integer id;
    private Integer panelId;
    private Long productId;
    private Integer sortOrder;
    private String fullUrl;
    private String picUrl;
    private String picUrl2;
    private String picUrl3;
    private Date created;
    private Date updated;
    private String productName;
    private BigDecimal salePrice;
    private String subTitle;
    private String productImageBig;
}
