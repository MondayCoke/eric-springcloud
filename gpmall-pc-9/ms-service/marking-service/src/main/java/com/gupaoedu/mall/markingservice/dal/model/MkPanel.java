package com.gupaoedu.mall.markingservice.dal.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;
import java.time.LocalDateTime;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 内容分类
 * </p>
 *
 * @author mic4096
 * @since 2022-01-05
 */
@Getter
@Setter
@TableName("mk_panel")
public class MkPanel extends Model {

    private static final long serialVersionUID = 1L;

    /**
     * 类目ID
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 板块名称
     */
    private String name;

    /**
     * 类型 0轮播图 1板块种类一 2板块种类二 3板块种类三 
     */
    private Integer type;

    /**
     * 排列序号
     */
    private Integer sortOrder;

    /**
     * 所属位置 0首页 1商品推荐 2我要捐赠
     */
    private Integer position;

    /**
     * 板块限制商品数量
     */
    private Integer limitNum;

    /**
     * 状态
     */
    private Integer status;

    /**
     * 备注
     */
    private String remark;

    /**
     * 创建时间
     */
    private LocalDateTime created;

    /**
     * 更新时间
     */
    private LocalDateTime updated;


}
