package com.gupaoedu.mall.markingservice.utils.contants;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
public class PanelContants {

    public static final int STATUS_DOWN=0;
    public static final int STATUS_UP=1;

    public enum PositionEnums{
        INDEX_POSITION(0,"首页展示的模块"),
        REMMEND_POSITION(1,"商品推荐")
        ;

        private int position;
        private String des;

        PositionEnums(int position,String des){
            this.position=position;
            this.des=des;
        }

        public int getPosition() {
            return position;
        }

        public String getDes() {
            return des;
        }
    }
}
