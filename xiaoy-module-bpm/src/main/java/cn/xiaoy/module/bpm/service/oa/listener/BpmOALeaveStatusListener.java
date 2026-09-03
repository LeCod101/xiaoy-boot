package cn.xiaoy.module.bpm.service.oa.listener;

import cn.xiaoy.module.bpm.api.event.BpmProcessInstanceStatusEvent;
import cn.xiaoy.module.bpm.api.event.BpmProcessInstanceStatusEventListener;
import cn.xiaoy.module.bpm.service.oa.BpmOALeaveService;
import cn.xiaoy.module.bpm.service.oa.BpmOALeaveServiceImpl;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * OA 请假单的结果的监听器实现类
 *
 * @author 小Y系统
 */
@Component
public class BpmOALeaveStatusListener extends BpmProcessInstanceStatusEventListener {

    @Resource
    private BpmOALeaveService leaveService;

    @Override
    protected String getProcessDefinitionKey() {
        return BpmOALeaveServiceImpl.PROCESS_KEY;
    }

    @Override
    protected void onEvent(BpmProcessInstanceStatusEvent event) {
        leaveService.updateLeaveStatus(Long.parseLong(event.getBusinessKey()), event.getStatus());
    }

}
