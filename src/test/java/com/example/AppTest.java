package com.example;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

/**
 * 单元测试
 */
public class AppTest {
    @Test
    public void shouldReturnCorrectGreeting() {
        App app = new App();
        assertEquals("Hello AWS CodePipeline!", app.getGreeting());
    }
}
