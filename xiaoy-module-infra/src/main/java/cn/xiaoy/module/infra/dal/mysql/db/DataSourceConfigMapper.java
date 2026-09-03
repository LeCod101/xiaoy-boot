package cn.xiaoy.module.infra.dal.mysql.db;

import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.module.infra.dal.dataobject.db.DataSourceConfigDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 数据源配置 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface DataSourceConfigMapper extends BaseMapperX<DataSourceConfigDO> {
}
