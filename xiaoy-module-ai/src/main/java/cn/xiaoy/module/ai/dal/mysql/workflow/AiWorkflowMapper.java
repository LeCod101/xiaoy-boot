package cn.xiaoy.module.ai.dal.mysql.workflow;

import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.module.ai.controller.admin.workflow.vo.AiWorkflowPageReqVO;
import cn.xiaoy.module.ai.dal.dataobject.workflow.AiWorkflowDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * AI 工作流 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface AiWorkflowMapper extends BaseMapperX<AiWorkflowDO> {

    default AiWorkflowDO selectByCode(String code) {
        return selectOne(AiWorkflowDO::getCode, code);
    }

    default PageResult<AiWorkflowDO> selectPage(AiWorkflowPageReqVO pageReqVO) {
        return selectPage(pageReqVO, new LambdaQueryWrapperX<AiWorkflowDO>()
                .eqIfPresent(AiWorkflowDO::getStatus, pageReqVO.getStatus())
                .likeIfPresent(AiWorkflowDO::getName, pageReqVO.getName())
                .likeIfPresent(AiWorkflowDO::getCode, pageReqVO.getCode())
                .betweenIfPresent(AiWorkflowDO::getCreateTime, pageReqVO.getCreateTime()));
    }

}
