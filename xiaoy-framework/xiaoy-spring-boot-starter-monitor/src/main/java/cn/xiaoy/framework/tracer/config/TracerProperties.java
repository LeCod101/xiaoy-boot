package cn.xiaoy.framework.tracer.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * BizTracer配置类
 *
 * @author 小Y系统
 */
@ConfigurationProperties("xiaoy.tracer")
@Data
public class TracerProperties {
}
