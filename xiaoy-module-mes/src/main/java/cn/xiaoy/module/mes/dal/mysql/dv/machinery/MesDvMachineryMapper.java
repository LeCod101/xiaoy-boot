package cn.xiaoy.module.mes.dal.mysql.dv.machinery;

import cn.hutool.core.collection.CollUtil;
import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.module.mes.controller.admin.dv.machinery.vo.MesDvMachineryPageReqVO;
import cn.xiaoy.module.mes.dal.dataobject.dv.machinery.MesDvMachineryDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * MES 设备台账 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface MesDvMachineryMapper extends BaseMapperX<MesDvMachineryDO> {

    default PageResult<MesDvMachineryDO> selectPage(MesDvMachineryPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<MesDvMachineryDO>()
                .likeIfPresent(MesDvMachineryDO::getCode, reqVO.getCode())
                .likeIfPresent(MesDvMachineryDO::getName, reqVO.getName())
                .likeIfPresent(MesDvMachineryDO::getBrand, reqVO.getBrand())
                .eqIfPresent(MesDvMachineryDO::getMachineryTypeId, reqVO.getMachineryTypeId())
                .inIfPresent(MesDvMachineryDO::getMachineryTypeId, reqVO.getMachineryTypeIds())
                .eqIfPresent(MesDvMachineryDO::getWorkshopId, reqVO.getWorkshopId())
                .eqIfPresent(MesDvMachineryDO::getStatus, reqVO.getStatus())
                .orderByDesc(MesDvMachineryDO::getId));
    }

    default MesDvMachineryDO selectByCode(String code) {
        return selectOne(MesDvMachineryDO::getCode, code);
    }

    default Long selectCountByMachineryTypeId(Long machineryTypeId) {
        return selectCount(MesDvMachineryDO::getMachineryTypeId, machineryTypeId);
    }

}
