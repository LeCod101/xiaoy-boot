package cn.xiaoy.module.infra.framework.file.config;

import cn.xiaoy.module.infra.framework.file.core.client.FileClientFactory;
import cn.xiaoy.module.infra.framework.file.core.client.FileClientFactoryImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 文件配置类
 *
 * @author 小Y系统
 */
@Configuration(proxyBeanMethods = false)
public class XiaoyFileAutoConfiguration {

    @Bean
    public FileClientFactory fileClientFactory() {
        return new FileClientFactoryImpl();
    }

}
