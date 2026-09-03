package cn.xiaoy.module.trade.dal.mysql.config;

import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.module.trade.dal.dataobject.config.TradeConfigDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 交易中心配置 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface TradeConfigMapper extends BaseMapperX<TradeConfigDO> {

}
