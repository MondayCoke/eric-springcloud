package com.gupaoedu.gpmall.eurekaserver;

import org.springframework.context.SmartLifecycle;
import org.springframework.stereotype.Service;

@Service
public class TestSmartLifeCycle implements SmartLifecycle {
    @Override
    public void start() {
        System.out.println("start");
    }

    @Override
    public void stop() {
        System.out.println("stop");
    }

    @Override
    public boolean isRunning() {
        return false;
    }
}
