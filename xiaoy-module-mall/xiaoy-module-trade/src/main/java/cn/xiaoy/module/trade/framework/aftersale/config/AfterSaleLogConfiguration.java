package cn.xiaoy.module.trade.framework.aftersale.config;

import cn.xiaoy.module.trade.framework.aftersale.core.aop.AfterSaleLogAspect;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

// TODO @小Y：改成 aftersale 好点哈；
/**
 * trade 模块的 afterSaleLog 组件的 Configuration
 *
 * @author 小Y系统
 * @since 2023/6/18 11:09
 */
@Configuration(proxyBeanMethods = false)
public class AfterSaleLogConfiguration {

    @Bean
    public AfterSaleLogAspect afterSaleLogAspect() {
        return new AfterSaleLogAspect();
    }

}
