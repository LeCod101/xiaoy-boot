package cn.xiaoy.module.mes.dal.mysql.md.vendor;

import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.module.mes.controller.admin.md.vendor.vo.MesMdVendorPageReqVO;
import cn.xiaoy.module.mes.dal.dataobject.md.vendor.MesMdVendorDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * MES 供应商 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface MesMdVendorMapper extends BaseMapperX<MesMdVendorDO> {

    default PageResult<MesMdVendorDO> selectPage(MesMdVendorPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<MesMdVendorDO>()
                .eqIfPresent(MesMdVendorDO::getCode, reqVO.getCode())
                .likeIfPresent(MesMdVendorDO::getName, reqVO.getName())
                .likeIfPresent(MesMdVendorDO::getNickname, reqVO.getNickname())
                .likeIfPresent(MesMdVendorDO::getEnglishName, reqVO.getEnglishName())
                .eqIfPresent(MesMdVendorDO::getStatus, reqVO.getStatus())
                .orderByDesc(MesMdVendorDO::getId));
    }

    default MesMdVendorDO selectByCode(String code) {
        return selectOne(MesMdVendorDO::getCode, code);
    }

    default MesMdVendorDO selectByName(String name) {
        return selectOne(MesMdVendorDO::getName, name);
    }

    default MesMdVendorDO selectByNickname(String nickname) {
        return selectOne(MesMdVendorDO::getNickname, nickname);
    }
}
