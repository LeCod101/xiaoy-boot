package cn.xiaoy.module.member.framework.web.config;

import cn.xiaoy.framework.swagger.config.XiaoySwaggerAutoConfiguration;
import org.springdoc.core.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * member 模块的 web 组件的 Configuration
 *
 * @author 小Y系统
 */
@Configuration(proxyBeanMethods = false)
public class MemberWebConfiguration {

    /**
     * member 模块的 API 分组
     */
    @Bean
    public GroupedOpenApi memberGroupedOpenApi() {
        return XiaoySwaggerAutoConfiguration.buildGroupedOpenApi("member");
    }

}
