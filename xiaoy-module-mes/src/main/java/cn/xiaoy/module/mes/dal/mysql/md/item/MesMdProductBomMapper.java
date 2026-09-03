package cn.xiaoy.module.mes.dal.mysql.md.item;

import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.framework.mybatis.core.mapper.BaseMapperX;
import cn.xiaoy.framework.mybatis.core.query.LambdaQueryWrapperX;
import cn.xiaoy.module.mes.controller.admin.md.item.vo.bom.MesMdProductBomPageReqVO;
import cn.xiaoy.module.mes.dal.dataobject.md.item.MesMdProductBomDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.Collection;
import java.util.List;

/**
 * MES 产品BOM Mapper
 *
 * @author 小Y系统
 */
@Mapper
public interface MesMdProductBomMapper extends BaseMapperX<MesMdProductBomDO> {

    default PageResult<MesMdProductBomDO> selectPage(MesMdProductBomPageReqVO reqVO) {
        return selectPage(reqVO, new LambdaQueryWrapperX<MesMdProductBomDO>()
                .eq(MesMdProductBomDO::getItemId, reqVO.getItemId())
                .eqIfPresent(MesMdProductBomDO::getStatus, reqVO.getStatus())
                .orderByDesc(MesMdProductBomDO::getId));
    }

    default List<MesMdProductBomDO> selectByItemId(Long itemId) {
        return selectList(MesMdProductBomDO::getItemId, itemId);
    }

    default List<MesMdProductBomDO> selectByItemIds(Collection<Long> itemIds) {
        return selectList(MesMdProductBomDO::getItemId, itemIds);
    }

    default List<MesMdProductBomDO> selectAll() {
        return selectList();
    }

    default void deleteByItemId(Long itemId) {
        delete(MesMdProductBomDO::getItemId, itemId);
    }

}
