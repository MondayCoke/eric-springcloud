package com.gupaoedu.example.nacosdemo;

import com.alibaba.nacos.api.NacosFactory;
import com.alibaba.nacos.api.config.ConfigService;
import com.alibaba.nacos.api.config.listener.Listener;
import com.alibaba.nacos.api.exception.NacosException;

import java.io.IOException;
import java.util.Properties;
import java.util.concurrent.Executor;

public class NacosMain {
    public static void main(String[] args) {
        String serverAddr="10.1.120.63:8848";
        String dataId="example";
        String groupId="DEFAULT_GROUP";
        Properties properties=new Properties();
        properties.put("serverAddr",serverAddr);
        try {
            //通过nacosfactory创建一个配置中心的服务
            ConfigService configService= NacosFactory.createConfigService(properties);
            // 5000表示读取配置的超时时间,如果超时或者出现网络故障，会抛出NacosException的异常
            String content=configService.getConfig(dataId,groupId,3000);
            configService.addListener(dataId, groupId, new Listener() {
                @Override
                public Executor getExecutor() {
                    return null;
                }

                @Override
                public void receiveConfigInfo(String s) {
                    System.out.println("收到配置变更通知："+s);
                }
            });
            System.out.println(content);
            System.in.read();
        } catch (NacosException | IOException e) {
            e.printStackTrace();
        }

    }
}
