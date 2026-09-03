package cn.xiaoy.module.mes.dal.mysql.pro.workrecord;

import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.module.mes.controller.admin.pro.workrecord.vo.MesProWorkRecordLogPageReqVO;
import cn.xiaoy.module.mes.dal.dataobject.pro.workrecord.MesProWorkRecordLogDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * MES 上下工记录流水 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface MesProWorkRecordLogMapper extends BaseMapperX<MesProWorkRecordLogDO> {

    default PageResult<MesProWorkRecordLogDO> selectPage(MesProWorkRecordLogPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<MesProWorkRecordLogDO>()
                .eqIfPresent(MesProWorkRecordLogDO::getUserId, reqVO.getUserId())
                .eqIfPresent(MesProWorkRecordLogDO::getWorkstationId, reqVO.getWorkstationId())
                .eqIfPresent(MesProWorkRecordLogDO::getType, reqVO.getType())
                .betweenIfPresent(MesProWorkRecordLogDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(MesProWorkRecordLogDO::getId));
    }

}
