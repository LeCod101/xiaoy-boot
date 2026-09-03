package cn.xiaoy.module.ai.framework.web.config;

import cn.xiaoy.framework.swagger.config.XiaoySwaggerAutoConfiguration;
import org.springdoc.core.models.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * ai 模块的 web 组件的 Configuration
 *
 * @author 小Y系统
 */
@Configuration(proxyBeanMethods = false)
public class AiWebConfiguration {

    /**
     * ai 模块的 API 分组
     */
    @Bean
    public GroupedOpenApi aiGroupedOpenApi() {
        return XiaoySwaggerAutoConfiguration.buildGroupedOpenApi("ai");
    }

}
