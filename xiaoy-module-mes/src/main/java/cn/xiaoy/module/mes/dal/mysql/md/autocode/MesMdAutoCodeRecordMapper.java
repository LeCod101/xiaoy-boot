package cn.xiaoy.module.mes.dal.mysql.md.autocode;

import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.module.mes.dal.dataobject.md.autocode.MesMdAutoCodeRecordDO;
import org.apache.ibatis.annotations.Mapper;

/**
 * MES 编码生成记录 Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface MesMdAutoCodeRecordMapper extends BaseMapperX<MesMdAutoCodeRecordDO> {

    default MesMdAutoCodeRecordDO selectByResult(String result) {
        return selectOne(MesMdAutoCodeRecordDO::getResult, result);
    }

}
