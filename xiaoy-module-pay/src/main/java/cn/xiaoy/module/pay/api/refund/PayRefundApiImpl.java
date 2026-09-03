package cn.xiaoy.module.pay.api.refund;

import cn.xiaoy.framework.common.util.object.BeanUtils;
import cn.xiaoy.module.pay.api.refund.dto.PayRefundCreateReqDTO;
import cn.xiaoy.module.pay.api.refund.dto.PayRefundRespDTO;
import cn.xiaoy.module.pay.dal.dataobject.refund.PayRefundDO;
import cn.xiaoy.module.pay.service.refund.PayRefundService;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;

/**
 * 退款单 API 实现类
 *
 * @author 小Y系统
 */
@Service
@Validated
public class PayRefundApiImpl implements PayRefundApi {

    @Resource
    private PayRefundService payRefundService;

    @Override
    public Long createRefund(PayRefundCreateReqDTO reqDTO) {
        return payRefundService.createRefund(reqDTO);
    }

    @Override
    public PayRefundRespDTO getRefund(Long id) {
        PayRefundDO refund = payRefundService.getRefund(id);
        return BeanUtils.toBean(refund, PayRefundRespDTO.class);
    }

}
