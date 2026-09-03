package cn.xiaoy.module.trade.service.order;

import cn.xiaoy.module.trade.dal.dataobject.order.TradeOrderLogDO;
import cn.xiaoy.module.trade.service.order.bo.TradeOrderLogCreateReqBO;
import org.springframework.scheduling.annotation.Async;

import java.util.List;

/**
 * 交易下单日志 Service 接口
 *
 * @author 小Y系统
 * @since 2023/7/6 15:44
 */
public interface TradeOrderLogService {

    /**
     * 创建交易下单日志
     *
     * @param logDTO 日志记录
     * @author 小Y系统
     * @since 2023/7/6 15:45
     */
    @Async
    void createOrderLog(TradeOrderLogCreateReqBO logDTO);

    /**
     * 获得交易订单日志列表
     *
     * @param orderId 订单编号
     * @return 交易订单日志列表
     */
    List<TradeOrderLogDO> getOrderLogListByOrderId(Long orderId);

}
