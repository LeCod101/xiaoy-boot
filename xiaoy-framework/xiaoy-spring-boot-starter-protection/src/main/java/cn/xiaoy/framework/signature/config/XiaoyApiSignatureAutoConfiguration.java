package cn.xiaoy.framework.signature.config;

import cn.xiaoy.framework.redis.config.XiaoyRedisAutoConfiguration;
import cn.xiaoy.framework.signature.core.aop.ApiSignatureAspect;
import cn.xiaoy.framework.signature.core.redis.ApiSignatureRedisDAO;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.core.StringRedisTemplate;

/**
 * HTTP API 签名的自动配置类
 *
 * @author 小Y系统
 */
@AutoConfiguration(after = XiaoyRedisAutoConfiguration.class)
public class XiaoyApiSignatureAutoConfiguration {

    @Bean
    public ApiSignatureAspect signatureAspect(ApiSignatureRedisDAO signatureRedisDAO) {
        return new ApiSignatureAspect(signatureRedisDAO);
    }

    @Bean
    public ApiSignatureRedisDAO signatureRedisDAO(StringRedisTemplate stringRedisTemplate) {
        return new ApiSignatureRedisDAO(stringRedisTemplate);
    }

}
