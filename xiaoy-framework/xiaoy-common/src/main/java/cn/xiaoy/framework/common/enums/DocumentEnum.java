package cn.xiaoy.framework.common.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 文档地址
 *
 * @author 小Y系统
 */
@Getter
@AllArgsConstructor
public enum DocumentEnum {

    REDIS_INSTALL("https://localhost/xiaoy/issues/I4VCSJ", "Redis 安装文档"),
    TENANT("https://doc.xiaoy.cn", "SaaS 多租户文档");

    private final String url;
    private final String memo;

}
