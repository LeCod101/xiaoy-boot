package cn.xiaoy.module.mes.dal.mysql.wm.outsourceissue;

import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.module.mes.controller.admin.wm.outsourceissue.vo.line.MesWmOutsourceIssueLinePageReqVO;
import cn.xiaoy.module.mes.dal.dataobject.wm.outsourceissue.MesWmOutsourceIssueLineDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * MES 外协发料单行 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface MesWmOutsourceIssueLineMapper extends BaseMapperX<MesWmOutsourceIssueLineDO> {

    default PageResult<MesWmOutsourceIssueLineDO> selectPage(MesWmOutsourceIssueLinePageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<MesWmOutsourceIssueLineDO>()
                .eqIfPresent(MesWmOutsourceIssueLineDO::getIssueId, reqVO.getIssueId())
                .orderByDesc(MesWmOutsourceIssueLineDO::getId));
    }

    default List<MesWmOutsourceIssueLineDO> selectListByIssueId(Long issueId) {
        return selectList(MesWmOutsourceIssueLineDO::getIssueId, issueId);
    }

    default void deleteByIssueId(Long issueId) {
        delete(MesWmOutsourceIssueLineDO::getIssueId, issueId);
    }

}
