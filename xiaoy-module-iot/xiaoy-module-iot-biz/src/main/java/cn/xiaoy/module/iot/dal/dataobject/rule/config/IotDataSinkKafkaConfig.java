package cn.xiaoy.module.iot.dal.dataobject.rule.config;

import lombok.Data;

/**
 * IoT Kafka 配置 {@link IotAbstractDataSinkConfig} 实现类
 *
 * @author 小Y系统
 */
@Data
public class IotDataSinkKafkaConfig extends IotAbstractDataSinkConfig {

    /**
     * Kafka 服务器地址
     */
    private String bootstrapServers;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;
    /**
     * 是否启用 SSL
     */
    private Boolean ssl;

    /**
     * 主题
     */
    private String topic;

}
