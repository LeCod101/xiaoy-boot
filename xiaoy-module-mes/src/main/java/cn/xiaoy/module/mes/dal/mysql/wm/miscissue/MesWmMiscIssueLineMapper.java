package cn.xiaoy.module.mes.dal.mysql.wm.miscissue;

import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.module.mes.controller.admin.wm.miscissue.vo.line.MesWmMiscIssueLinePageReqVO;
import cn.xiaoy.module.mes.dal.dataobject.wm.miscissue.MesWmMiscIssueLineDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * MES 杂项出库单行 Mapper
 */
@Mapper
public interface MesWmMiscIssueLineMapper extends BaseMapperX<MesWmMiscIssueLineDO> {

    default PageResult<MesWmMiscIssueLineDO> selectPage(MesWmMiscIssueLinePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<MesWmMiscIssueLineDO>()
                .eqIfPresent(MesWmMiscIssueLineDO::getIssueId, reqVO.getIssueId())
                .orderByDesc(MesWmMiscIssueLineDO::getId));
    }

    default List<MesWmMiscIssueLineDO> selectListByIssueId(Long issueId) {
        return selectList(MesWmMiscIssueLineDO::getIssueId, issueId);
    }

    default void deleteByIssueId(Long issueId) {
        delete(MesWmMiscIssueLineDO::getIssueId, issueId);
    }

}
