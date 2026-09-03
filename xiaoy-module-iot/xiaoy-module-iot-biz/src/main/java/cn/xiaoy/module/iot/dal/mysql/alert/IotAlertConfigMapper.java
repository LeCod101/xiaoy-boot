package cn.xiaoy.module.iot.dal.mysql.alert;

import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.framework.mybatis.core.util.MyBatisUtils;
import cn.xiaoy.module.iot.controller.admin.alert.vo.config.IotAlertConfigPageReqVO;
import cn.xiaoy.module.iot.dal.dataobject.alert.IotAlertConfigDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * IoT 告警配置 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface IotAlertConfigMapper extends BaseMapperX<IotAlertConfigDO> {

    default PageResult<IotAlertConfigDO> selectPage(IotAlertConfigPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<IotAlertConfigDO>()
                .likeIfPresent(IotAlertConfigDO::getName, reqVO.getName())
                .eqIfPresent(IotAlertConfigDO::getStatus, reqVO.getStatus())
                .betweenIfPresent(IotAlertConfigDO::getCreateTime, reqVO.getCreateTime())
                .orderByDesc(IotAlertConfigDO::getId));
    }

    default List<IotAlertConfigDO> selectListByStatus(Integer status) {
        return selectList(IotAlertConfigDO::getStatus, status);
    }

    default List<IotAlertConfigDO> selectListBySceneRuleIdAndStatus(Long sceneRuleId, Integer status) {
        return selectList(new LambdaQueryWrapperX<IotAlertConfigDO>()
                .eq(IotAlertConfigDO::getStatus, status)
                .apply(MyBatisUtils.findInSet("scene_rule_ids"), sceneRuleId));
    }

}
