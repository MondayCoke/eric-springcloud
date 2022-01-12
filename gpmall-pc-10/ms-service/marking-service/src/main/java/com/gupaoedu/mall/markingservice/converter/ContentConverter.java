package com.gupaoedu.mall.markingservice.converter;

import com.gupaoedu.mall.dto.PanelContentItemDto;
import com.gupaoedu.mall.dto.PanelDto;
import com.gupaoedu.mall.markingservice.dal.model.MkPanel;
import com.gupaoedu.mall.markingservice.dal.model.MkPanelContent;
import org.mapstruct.Mapper;
import org.mapstruct.Mappings;

import java.util.List;


/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Mapper(componentModel = "spring")
public interface ContentConverter {

    @Mappings({})
    PanelDto panel2Dto(MkPanel panel);

    @Mappings({})
    PanelContentItemDto panelContent2Dto(MkPanelContent panelContent);


    List<PanelContentItemDto> panelContentItem2Dto(List<MkPanelContent> mkPanelContents);

}
