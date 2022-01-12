package com.gupaoedu.mall.markingservice.services;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.gupaoedu.mall.api.IContentService;
import com.gupaoedu.mall.dto.IndexModuleContentResponse;
import com.gupaoedu.mall.dto.PanelContentItemDto;
import com.gupaoedu.mall.dto.PanelDto;
import com.gupaoedu.mall.enums.MkResCodeEnum;
import com.gupaoedu.mall.exception.ValidException;
import com.gupaoedu.mall.markingservice.converter.ContentConverter;
import com.gupaoedu.mall.markingservice.dal.mapper.MkPanelContentMapper;
import com.gupaoedu.mall.markingservice.dal.mapper.MkPanelMapper;
import com.gupaoedu.mall.markingservice.dal.model.MkPanel;
import com.gupaoedu.mall.markingservice.dal.model.MkPanelContent;
import com.gupaoedu.mall.markingservice.utils.contants.PanelContants;
import com.gupaoedu.mall.markingservice.utils.exception.MkExceptionWrapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
@Slf4j
@RestController
public class ContentService implements IContentService {

    @Autowired
    private MkPanelMapper panelMapper;

    @Autowired
    private MkPanelContentMapper panelContentMapper;

    @Autowired
    private ContentConverter contentConverter;

    @Override
    public IndexModuleContentResponse content() {
        log.info("[ContentService.content()] , begin execute!");
        IndexModuleContentResponse response=new IndexModuleContentResponse();
        try {
            content(response);
        }catch (Exception e){
            //Mertics
            MkExceptionWrapper.handlerException2Biz(response,e);
        }
        return response;
    }

    private void content(IndexModuleContentResponse response){
        //查询Panel表中的数据
        QueryWrapper<MkPanel> panelWrapper=new QueryWrapper<>();
        panelWrapper.eq("position", PanelContants.PositionEnums.INDEX_POSITION)
                .eq("status",PanelContants.STATUS_UP).orderByAsc("sort_order");
        List<MkPanel> panels=panelMapper.selectList(panelWrapper);
        if(panels==null||panels.isEmpty()){
            log.error("[ContentService.content()], 首页模块数据查询结果为空，数据查询失败");
            throw new ValidException(MkResCodeEnum.QUERY_DATA_NOT_EXIST.getCode(),MkResCodeEnum.QUERY_DATA_NOT_EXIST.getMsg());
        }
        List<PanelDto> panelDtos=new ArrayList<>();
        panels.parallelStream().forEach(panel->{
            QueryWrapper<MkPanelContent> panelContentWrapper=new QueryWrapper<>();
            panelContentWrapper.eq("panel_id",panel.getId()).orderByAsc("sort_order");
            List<MkPanelContent> panelContents=panelContentMapper.selectList(panelContentWrapper);
            //详情
            List<PanelContentItemDto> panelContentItemDtos=contentConverter.panelContentItem2Dto(panelContents);
            PanelDto panelDto=contentConverter.panel2Dto(panel);
            panelDto.setPanelContentItems(panelContentItemDtos);
            panelDtos.add(panelDto);
        });
        response.setCode(MkResCodeEnum.SYS_SUCCESS.getCode());
        response.setMsg(MkResCodeEnum.SYS_SUCCESS.getMsg());
        response.setPanelDtos(panelDtos);
    }
}
