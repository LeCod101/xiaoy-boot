package cn.xiaoy.module.trade.framework.delivery.core.client.impl;

import cn.xiaoy.module.trade.framework.delivery.core.client.ExpressClient;
import cn.xiaoy.module.trade.framework.delivery.core.client.dto.ExpressTrackQueryReqDTO;
import cn.xiaoy.module.trade.framework.delivery.core.client.dto.ExpressTrackRespDTO;

import java.util.List;

import static cn.xiaoy.framework.common.exception.util.ServiceExceptionUtil.exception;
import static cn.xiaoy.module.trade.enums.ErrorCodeConstants.EXPRESS_CLIENT_NOT_PROVIDE;

/**
 * 未实现的快递客户端，用来提醒用户需要接入快递服务商，
 *
 * @author 小Y系统
 */
public class NoProvideExpressClient implements ExpressClient {

    @Override
    public List<ExpressTrackRespDTO> getExpressTrackList(ExpressTrackQueryReqDTO reqDTO) {
        throw exception(EXPRESS_CLIENT_NOT_PROVIDE);
    }

}
