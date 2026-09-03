package cn.xiaoy.module.crm.dal.mysql.business;

import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.module.crm.dal.dataobject.business.CrmBusinessStatusDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 商机状态 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface CrmBusinessStatusMapper extends BaseMapperX<CrmBusinessStatusDO> {

    default int deleteByTypeId(Long typeId) {
        return delete(CrmBusinessStatusDO::getTypeId, typeId);
    }

    default List<CrmBusinessStatusDO> selectListByTypeId(Long typeId) {
        return selectList(CrmBusinessStatusDO::getTypeId, typeId);
    }

    default CrmBusinessStatusDO selectByTypeIdAndId(Long statusTypeId, Long statusId) {
        return selectOne(CrmBusinessStatusDO::getTypeId, statusTypeId,
                CrmBusinessStatusDO::getId, statusId);
    }

}
