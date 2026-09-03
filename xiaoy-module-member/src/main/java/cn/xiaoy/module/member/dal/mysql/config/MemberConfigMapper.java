package cn.xiaoy.module.member.dal.mysql.config;

import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.module.member.dal.dataobject.config.MemberConfigDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * 积分设置 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface MemberConfigMapper extends BaseMapperX<MemberConfigDO> {
}
