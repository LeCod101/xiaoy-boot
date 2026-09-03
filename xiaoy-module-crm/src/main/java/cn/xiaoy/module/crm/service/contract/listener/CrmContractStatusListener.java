package cn.xiaoy.module.crm.service.contract.listener;

import cn.xiaoy.module.bpm.api.event.BpmProcessInstanceStatusEvent;
import cn.xiaoy.module.bpm.api.event.BpmProcessInstanceStatusEventListener;
import cn.xiaoy.module.crm.service.contract.CrmContractService;
import cn.xiaoy.module.crm.service.contract.CrmContractServiceImpl;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * 合同审批的结果的监听器实现类
 *
 * @author 小Y系统
 */
@Component
public class CrmContractStatusListener extends BpmProcessInstanceStatusEventListener {

    @Resource
    private CrmContractService contractService;

    @Override
    public String getProcessDefinitionKey() {
        return CrmContractServiceImpl.BPM_PROCESS_DEFINITION_KEY;
    }

    @Override
    protected void onEvent(BpmProcessInstanceStatusEvent event) {
        contractService.updateContractAuditStatus(Long.parseLong(event.getBusinessKey()), event.getStatus());
    }

}
