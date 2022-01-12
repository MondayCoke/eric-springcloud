package com.gupaoedu.mall.markingservice.dal.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 
 * </p>
 *
 * @author mic4096
 * @since 2022-01-05
 */
@Getter
@Setter
@TableName("mk_panel_content")
public class MkPanelContent extends Model {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 所属板块id
     */
    private Integer panelId;

    /**
     * 类型 0关联商品 1其他链接
     */
    private Integer type;

    /**
     * 关联商品id
     */
    private Long itemId;

    /**
     * 商品标题（冗余字段）
     */
    private String title;

    /**
     * 商品卖点（冗余字段）
     */
    private String sellPoint;

    /**
     * 商品价格（冗余字段）
     */
    private BigDecimal price;

    /**
     * 排序号
     */
    private Integer sortOrder;

    /**
     * 其他链接
     */
    private String fullUrl;

    private String picUrl;

    /**
     * 轮播图备用
     */
    private String picUrl2;

    /**
     * 轮播图备用
     */
    private String picUrl3;

    private LocalDateTime created;

    private LocalDateTime updated;


}
