package cn.xiaoy.module.product.convert.brand;

import cn.xiaoy.framework.common.pojo.PageResult;
import cn.xiaoy.module.product.controller.admin.brand.vo.ProductBrandCreateReqVO;
import cn.xiaoy.module.product.controller.admin.brand.vo.ProductBrandRespVO;
import cn.xiaoy.module.product.controller.admin.brand.vo.ProductBrandSimpleRespVO;
import cn.xiaoy.module.product.controller.admin.brand.vo.ProductBrandUpdateReqVO;
import cn.xiaoy.module.product.dal.dataobject.brand.ProductBrandDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * 品牌 Convert
 *
 * @author 小Y系统
 */
@Mapper
public interface ProductBrandConvert {

    ProductBrandConvert INSTANCE = Mappers.getMapper(ProductBrandConvert.class);

    ProductBrandDO convert(ProductBrandCreateReqVO bean);

    ProductBrandDO convert(ProductBrandUpdateReqVO bean);

    ProductBrandRespVO convert(ProductBrandDO bean);

    List<ProductBrandSimpleRespVO> convertList1(List<ProductBrandDO> list);

    List<ProductBrandRespVO> convertList(List<ProductBrandDO> list);

    PageResult<ProductBrandRespVO> convertPage(PageResult<ProductBrandDO> page);

}
