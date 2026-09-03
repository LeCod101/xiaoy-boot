package cn.xiaoy.module.bpm.dal.mysql.definition;

import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.module.bpm.controller.admin.definition.vo.listener.BpmProcessListenerPageReqVO;
import cn.xiaoy.module.bpm.dal.dataobject.definition.BpmProcessListenerDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * BPM 流程监听器 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface BpmProcessListenerMapper extends BaseMapperX<BpmProcessListenerDO> {

    default PageResult<BpmProcessListenerDO> selectPage(BpmProcessListenerPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<BpmProcessListenerDO>()
                .likeIfPresent(BpmProcessListenerDO::getName, reqVO.getName())
                .eqIfPresent(BpmProcessListenerDO::getType, reqVO.getType())
                .eqIfPresent(BpmProcessListenerDO::getEvent, reqVO.getEvent())
                .eqIfPresent(BpmProcessListenerDO::getStatus, reqVO.getStatus())
                .orderByDesc(BpmProcessListenerDO::getId));
    }

}