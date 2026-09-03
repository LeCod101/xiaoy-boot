package cn.xiaoy.module.promotion.controller.admin.bargain;

import cn.hutool.core.collection.CollUtil;
import cn.xiaoy.framework.common.pojo.CommonResult;
import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.module.member.api.user.MemberUserApi;
import cn.xiaoy.module.member.api.user.dto.MemberUserRespDTO;
import cn.xiaoy.module.promotion.controller.admin.bargain.vo.recrod.BargainRecordPageItemRespVO;
import cn.xiaoy.module.promotion.controller.admin.bargain.vo.recrod.BargainRecordPageReqVO;
import cn.xiaoy.module.promotion.convert.bargain.BargainRecordConvert;
import cn.xiaoy.module.promotion.dal.dataobject.bargain.BargainActivityDO;
import cn.xiaoy.module.promotion.dal.dataobject.bargain.BargainRecordDO;
import cn.xiaoy.module.promotion.service.bargain.BargainActivityService;
import cn.xiaoy.module.promotion.service.bargain.BargainHelpService;
import cn.xiaoy.module.promotion.service.bargain.BargainRecordService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.validation.Valid;
import java.util.List;
import java.util.Map;

import static cn.xiaoy.framework.common.pojo.CommonResult.success;
import static cn.xiaoy.framework.common.util.collection.CollectionUtils.convertSet;

@Tag(name = "管理后台 - 砍价记录")
@RestController
@RequestMapping("/promotion/bargain-record")
@Validated
public class BargainRecordController {

    @Resource
    private BargainRecordService bargainRecordService;
    @Resource
    private BargainActivityService bargainActivityService;
    @Resource
    private BargainHelpService bargainHelpService;

    @Resource
    private MemberUserApi memberUserApi;

    @GetMapping("/page")
    @Operation(summary = "获得砍价记录分页")
    @PreAuthorize("@ss.hasPermission('promotion:bargain-record:query')")
    public CommonResult<PageResult<BargainRecordPageItemRespVO>> getBargainRecordPage(@Valid BargainRecordPageReqVO pageVO) {
        PageResult<BargainRecordDO> pageResult = bargainRecordService.getBargainRecordPage(pageVO);
        if (CollUtil.isEmpty(pageResult.getList())) {
            return success(PageResult.empty(pageResult.getTotal()));
        }

        // 拼接数据
        Map<Long, MemberUserRespDTO> userMap = memberUserApi.getUserMap(
                convertSet(pageResult.getList(), BargainRecordDO::getUserId));
        List<BargainActivityDO> activityList = bargainActivityService.getBargainActivityList(
                convertSet(pageResult.getList(), BargainRecordDO::getActivityId));
        Map<Long, Integer> helpCountMap = bargainHelpService.getBargainHelpUserCountMapByRecord(
                convertSet(pageResult.getList(), BargainRecordDO::getId));
        return success(BargainRecordConvert.INSTANCE.convertPage(pageResult, helpCountMap, activityList, userMap));
    }

}
