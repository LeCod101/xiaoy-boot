package cn.xiaoy.module.system.api.notify;

import cn.xiaoy.module.system.api.notify.dto.NotifySendSingleToUserReqDTO;
import cn.xiaoy.module.system.service.notify.NotifySendService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 站内信发送 API 实现类
 *
 * @author 小Y系统
 */
@Service
public class NotifyMessageSendApiImpl implements NotifyMessageSendApi {

    @Resource
    private NotifySendService notifySendService;

    @Override
    public Long sendSingleMessageToAdmin(NotifySendSingleToUserReqDTO reqDTO) {
        return notifySendService.sendSingleNotifyToAdmin(reqDTO.getUserId(),
                reqDTO.getTemplateCode(), reqDTO.getTemplateParams());
    }

    @Override
    public Long sendSingleMessageToMember(NotifySendSingleToUserReqDTO reqDTO) {
        return notifySendService.sendSingleNotifyToMember(reqDTO.getUserId(),
                reqDTO.getTemplateCode(), reqDTO.getTemplateParams());
    }

}
