package cn.xiaoy.module.system.framework.web.config;

import cn.xiaoy.framework.swagger.config.XiaoySwaggerAutoConfiguration;
import org.springdoc.core.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * system 模块的 web 组件的 Configuration
 *
 * @author 小Y系统
 */
@Configuration(proxyBeanMethods = false)
public class SystemWebConfiguration {

    /**
     * system 模块的 API 分组
     */
    @Bean
    public GroupedOpenApi systemGroupedOpenApi() {
        return XiaoySwaggerAutoConfiguration.buildGroupedOpenApi("system");
    }

}
