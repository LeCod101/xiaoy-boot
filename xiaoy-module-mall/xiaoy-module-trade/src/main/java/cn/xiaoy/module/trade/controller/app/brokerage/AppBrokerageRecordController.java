package cn.xiaoy.module.trade.controller.app.brokerage;

import cn.xiaoy.framework.common.pojo.CommonResult;
import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.common.util.object.BeanUtils;
import cn.xiaoy.framework.dict.core.DictFrameworkUtils;
import cn.xiaoy.module.trade.controller.admin.brokerage.vo.record.BrokerageRecordPageReqVO;
import cn.xiaoy.module.trade.controller.app.brokerage.vo.record.AppBrokerageProductPriceRespVO;
import cn.xiaoy.module.trade.controller.app.brokerage.vo.record.AppBrokerageRecordPageReqVO;
import cn.xiaoy.module.trade.controller.app.brokerage.vo.record.AppBrokerageRecordRespVO;
import cn.xiaoy.module.trade.dal.dataobject.brokerage.BrokerageRecordDO;
import cn.xiaoy.module.trade.enums.DictTypeConstants;
import cn.xiaoy.module.trade.service.brokerage.BrokerageRecordService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.validation.Valid;

import static cn.xiaoy.framework.common.pojo.CommonResult.success;
import static cn.xiaoy.framework.web.core.util.WebFrameworkUtils.getLoginUserId;

@Tag(name = "用户 APP - 分销用户")
@RestController
@RequestMapping("/trade/brokerage-record")
@Validated
@Slf4j
public class AppBrokerageRecordController {

    @Resource
    private BrokerageRecordService brokerageRecordService;

    @GetMapping("/page")
    @Operation(summary = "获得分销记录分页")
    public CommonResult<PageResult<AppBrokerageRecordRespVO>> getBrokerageRecordPage(@Valid AppBrokerageRecordPageReqVO pageReqVO) {
        PageResult<BrokerageRecordDO> pageResult = brokerageRecordService.getBrokerageRecordPage(
                BeanUtils.toBean(pageReqVO, BrokerageRecordPageReqVO.class).setUserId(getLoginUserId()));
        return success(BeanUtils.toBean(pageResult, AppBrokerageRecordRespVO.class, recordVO ->
                recordVO.setStatusName(DictFrameworkUtils.parseDictDataLabel(DictTypeConstants.BROKERAGE_RECORD_STATUS, recordVO.getStatus()))));
    }

    @GetMapping("/get-product-brokerage-price")
    @Operation(summary = "获得商品的分销金额")
    public CommonResult<AppBrokerageProductPriceRespVO> getProductBrokeragePrice(@RequestParam("spuId") Long spuId) {
        return success(brokerageRecordService.calculateProductBrokeragePrice(getLoginUserId(), spuId));
    }

}