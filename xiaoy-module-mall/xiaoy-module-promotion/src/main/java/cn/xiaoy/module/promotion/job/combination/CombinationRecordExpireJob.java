package cn.xiaoy.module.promotion.job.combination;

import cn.hutool.core.util.StrUtil;
import cn.xiaoy.framework.common.core.KeyValue;
import cn.xiaoy.framework.quartz.core.handler.JobHandler;
import cn.xiaoy.framework.tenant.core.job.TenantJob;
import cn.xiaoy.module.promotion.service.combination.CombinationRecordService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 拼团过期 Job
 *
 * @author 小Y系统
 */
@Component
public class CombinationRecordExpireJob implements JobHandler {

    @Resource
    private CombinationRecordService combinationRecordService;

    @Override
    @TenantJob
    public String execute(String param) {
        KeyValue<Integer, Integer> keyValue = combinationRecordService.expireCombinationRecord();
        return StrUtil.format("过期拼团 {} 个, 虚拟成团 {} 个", keyValue.getKey(), keyValue.getValue());
    }

}
