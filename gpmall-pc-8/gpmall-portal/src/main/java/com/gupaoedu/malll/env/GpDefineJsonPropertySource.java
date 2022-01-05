package com.gupaoedu.malll.env;

import org.springframework.core.env.MapPropertySource;

import java.util.Map;

/**
 * 咕泡教育，ToBeBetterMan
 * Mic老师微信: mic4096
 * 微信公众号： 跟着Mic学架构
 * https://ke.gupaoedu.cn
 * 用来给到Environment中的PropertySource
 **/
public class GpDefineJsonPropertySource extends MapPropertySource {
    /**
     * Create a new {@code MapPropertySource} with the given name and {@code Map}.
     *
     * @param name   the associated name
     * @param source the Map source (without {@code null} values in order to get
     *               consistent {@link #getProperty} and {@link #containsProperty} behavior)
     */
    public GpDefineJsonPropertySource(String name, Map<String, Object> source) {
        super(name, source);
    }

    @Override
    public Object getProperty(String name) {
        return super.getProperty(name);
    }

    @Override
    public String[] getPropertyNames() {
        return super.getPropertyNames();
    }
}
