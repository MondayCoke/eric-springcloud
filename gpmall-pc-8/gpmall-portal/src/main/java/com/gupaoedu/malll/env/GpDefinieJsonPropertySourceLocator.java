package com.gupaoedu.malll.env;

import org.springframework.boot.json.JsonParser;
import org.springframework.boot.json.JsonParserFactory;
import org.springframework.cloud.bootstrap.config.PropertySourceLocator;
import org.springframework.core.env.Environment;
import org.springframework.core.env.PropertySource;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 **/
public class GpDefinieJsonPropertySourceLocator implements PropertySourceLocator {

    private final static String DEFAULT_LOCATOR="classpath:gupao.json";
    private final ResourceLoader resourceLoader=new DefaultResourceLoader(getClass().getClassLoader());

    @Override
    public PropertySource<?> locate(Environment environment) {
        //告诉spring cloud ， 我这里有一个PropertySource， 给你!
        GpDefineJsonPropertySource defineJsonPropertySource=new
                GpDefineJsonPropertySource("gpDefinieJsonPropertySource",mapPropertySource());
        return defineJsonPropertySource;
    }

    private Map<String,Object> mapPropertySource(){
        Resource resource=this.resourceLoader.getResource(DEFAULT_LOCATOR);
        if(resource==null){
            return null;
        }
        Map<String,Object> result=new HashMap<>();
        String content=readFile(resource); //得到的是json文件
        JsonParser parser= JsonParserFactory.getJsonParser();
        Map<String,Object> jsonMap=parser.parseMap(content);
        processNestMap("",result,jsonMap);
        return result;
    }

    // test.test.test
    private void processNestMap(String prefix,Map<String,Object> result,Map<String,Object> jsonMap){
        if(prefix.length()>0){
            prefix+=".";
        }
        for(Map.Entry<String,Object> entrySet:jsonMap.entrySet()){
            if(entrySet.getValue() instanceof Map){
                processNestMap(prefix+entrySet.getKey(),result, (Map<String, Object>) entrySet.getValue());
            }else{
                result.put(prefix+entrySet.getKey(),entrySet.getValue());
            }
        }
    }

    //读取文件内容
    private String readFile(Resource resource){
        FileInputStream fileInputStream=null;
        try {
            fileInputStream=new FileInputStream(resource.getFile());
            byte[] readByte=new byte[(int)resource.getFile().length()];
            fileInputStream.read(readByte);
            return new String(readByte,"UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if(fileInputStream!=null){
                try {
                    fileInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

}
