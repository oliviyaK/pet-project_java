package org.kustova.refrigerators.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import static org.kustova.refrigerators.utils.Constants.*;

@Configuration
public class WebConfiguration implements WebMvcConfigurer {
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController(URL).setViewName(INDEX);
        registry.addViewController(URL_LOGIN).setViewName(LOGIN);
    }
}
