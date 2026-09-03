package cn.xiaoy.module.mes.dal.mysql.cal.team;

import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.module.mes.controller.admin.cal.team.vo.shift.MesCalTeamShiftListReqVO;
import cn.xiaoy.module.mes.dal.dataobject.cal.team.MesCalTeamShiftDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * MES 班组排班 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface MesCalTeamShiftMapper extends BaseMapperX<MesCalTeamShiftDO> {

    default List<MesCalTeamShiftDO> selectList(MesCalTeamShiftListReqVO reqVO) {
        return selectList(new LambdaQueryWrapperX<MesCalTeamShiftDO>()
                .eqIfPresent(MesCalTeamShiftDO::getTeamId, reqVO.getTeamId())
                .inIfPresent(MesCalTeamShiftDO::getTeamId, reqVO.getTeamIds())
                .eqIfPresent(MesCalTeamShiftDO::getPlanId, reqVO.getPlanId())
                .geIfPresent(MesCalTeamShiftDO::getDay, reqVO.getStartDay())
                .leIfPresent(MesCalTeamShiftDO::getDay, reqVO.getEndDay())
                .orderByAsc(MesCalTeamShiftDO::getDay)
                .orderByAsc(MesCalTeamShiftDO::getSort));
    }

    default List<MesCalTeamShiftDO> selectListByPlanId(Long planId) {
        return selectList(MesCalTeamShiftDO::getPlanId, planId);
    }

    default void deleteByPlanId(Long planId) {
        delete(MesCalTeamShiftDO::getPlanId, planId);
    }

    default void deleteByTeamId(Long teamId) {
        delete(MesCalTeamShiftDO::getTeamId, teamId);
    }

}
