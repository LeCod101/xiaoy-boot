package cn.xiaoy.module.crm.service.receivable.listener;

import cn.xiaoy.module.bpm.api.event.BpmProcessInstanceStatusEvent;
import cn.xiaoy.module.bpm.api.event.BpmProcessInstanceStatusEventListener;
import cn.xiaoy.module.crm.service.receivable.CrmReceivableService;
import cn.xiaoy.module.crm.service.receivable.CrmReceivableServiceImpl;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 回款审批的结果的监听器实现类
 *
 * @author 小Y系统
 */
@Component
public class CrmReceivableStatusListener extends BpmProcessInstanceStatusEventListener {

    @Resource
    private CrmReceivableService receivableService;

    @Override
    public String getProcessDefinitionKey() {
        return CrmReceivableServiceImpl.BPM_PROCESS_DEFINITION_KEY;
    }

    @Override
    public void onEvent(BpmProcessInstanceStatusEvent event) {
        receivableService.updateReceivableAuditStatus(Long.parseLong(event.getBusinessKey()), event.getStatus());
    }

}
