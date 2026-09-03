package cn.xiaoy.module.trade.job.brokerage;

import cn.hutool.core.util.StrUtil;
import cn.xiaoy.framework.quartz.core.handler.JobHandler;
import cn.xiaoy.framework.tenant.core.job.TenantJob;
import cn.xiaoy.module.trade.service.brokerage.BrokerageRecordService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 佣金解冻 Job
 *
 * @author 小Y系统
 */
@Component
public class BrokerageRecordUnfreezeJob implements JobHandler {

    @Resource
    private BrokerageRecordService brokerageRecordService;

    @Override
    @TenantJob
    public String execute(String param) {
        int count = brokerageRecordService.unfreezeRecord();
        return StrUtil.format("解冻佣金 {} 个", count);
    }

}
