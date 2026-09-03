package cn.xiaoy.framework.banner.core;

import cn.hutool.core.thread.ThreadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.util.ClassUtils;

import java.util.concurrent.TimeUnit;

/**
 * 项目启动成功后，提供文档相关的地址
 *
 * @author 小Y系统
 */
@Slf4j
public class BannerApplicationRunner implements ApplicationRunner {

    @Override
    public void run(ApplicationArguments args) {
        ThreadUtil.execute(() -> {
            ThreadUtil.sleep(1, TimeUnit.SECONDS); // 延迟 1 秒，保证输出到结尾
            log.info("\n----------------------------------------------------------\n\t" +
                            "项目启动成功！\n\t" +
                            "接口文档: \t{} \n\t" +
                            "开发文档: \t{} \n\t" +
                            "视频教程: \t{} \n" +
                            "----------------------------------------------------------",
                    "https://doc.xiaoy.cn/api-doc/",
                    "https://doc.xiaoy.cn",
                    "https://docs.xiaoy.cn/02Yf6M7Qn");

            // 数据报表
            if (isNotPresent("cn.xiaoy.module.report.framework.security.config.SecurityConfiguration")) {
                System.out.println("[报表模块 xiaoy-module-report - 已禁用][参考 https://doc.xiaoy.cn/report/ 开启]");
            }
            // 工作流
            if (isNotPresent("cn.xiaoy.module.bpm.framework.flowable.config.BpmFlowableConfiguration")) {
                System.out.println("[工作流模块 xiaoy-module-bpm - 已禁用][参考 https://doc.xiaoy.cn/bpm/ 开启]");
            }
            // 商城系统
            if (isNotPresent("cn.xiaoy.module.trade.framework.web.config.TradeWebConfiguration")) {
                System.out.println("[商城系统 xiaoy-module-mall - 已禁用][参考 https://doc.xiaoy.cn/mall/build/ 开启]");
            }
            // ERP 系统
            if (isNotPresent("cn.xiaoy.module.erp.framework.web.config.ErpWebConfiguration")) {
                System.out.println("[ERP 系统 xiaoy-module-erp - 已禁用][参考 https://doc.xiaoy.cn/erp/build/ 开启]");
            }
            // WMS 仓库管理系统
            if (isNotPresent("cn.xiaoy.module.wms.framework.web.config.WmsWebConfiguration")) {
                System.out.println("[WMS 仓库管理系统 xiaoy-module-wms - 已禁用][参考 https://doc.xiaoy.cn/wms/build/ 开启]");
            }
            // CRM 系统
            if (isNotPresent("cn.xiaoy.module.crm.framework.web.config.CrmWebConfiguration")) {
                System.out.println("[CRM 系统 xiaoy-module-crm - 已禁用][参考 https://doc.xiaoy.cn/crm/build/ 开启]");
            }
            // MES 系统
            if (isNotPresent("cn.xiaoy.module.mes.framework.web.config.MesWebConfiguration")) {
                System.out.println("[MES 系统 xiaoy-module-mes - 已禁用][参考 https://doc.xiaoy.cn/mes/build/ 开启]");
            }
            // 微信公众号
            if (isNotPresent("cn.xiaoy.module.mp.framework.mp.config.MpConfiguration")) {
                System.out.println("[微信公众号 xiaoy-module-mp - 已禁用][参考 https://doc.xiaoy.cn/mp/build/ 开启]");
            }
            // 支付平台
            if (isNotPresent("cn.xiaoy.module.pay.framework.pay.config.PayConfiguration")) {
                System.out.println("[支付系统 xiaoy-module-pay - 已禁用][参考 https://doc.xiaoy.cn/pay/build/ 开启]");
            }
            // AI 大模型
            if (isNotPresent("cn.xiaoy.module.ai.framework.web.config.AiWebConfiguration")) {
                System.out.println("[AI 大模型 xiaoy-module-ai - 已禁用][参考 https://doc.xiaoy.cn/ai/build/ 开启]");
            }
            // IoT 物联网
            if (isNotPresent("cn.xiaoy.module.iot.framework.web.config.IotWebConfiguration")) {
                System.out.println("[IoT 物联网 xiaoy-module-iot - 已禁用][参考 https://doc.xiaoy.cn/iot/build/ 开启]");
            }
            // IM 即时通讯
            if (isNotPresent("cn.xiaoy.module.im.framework.web.config.ImWebConfiguration")) {
                System.out.println("[IM 即时通讯 xiaoy-module-im - 已禁用][参考 https://doc.xiaoy.cn/im/build/ 开启]");
            }
        });
    }

    private static boolean isNotPresent(String className) {
        return !ClassUtils.isPresent(className, ClassUtils.getDefaultClassLoader());
    }

}
