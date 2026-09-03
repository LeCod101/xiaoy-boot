package cn.xiaoy.module.product.api.comment;

import cn.xiaoy.module.product.api.comment.dto.ProductCommentCreateReqDTO;
import cn.xiaoy.module.product.service.comment.ProductCommentService;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;

/**
 * 商品评论 API 实现类
 *
 * @author 小Y系统
 */
@Service
@Validated
public class ProductCommentApiImpl implements ProductCommentApi {

    @Resource
    private ProductCommentService productCommentService;

    @Override
    public Long createComment(ProductCommentCreateReqDTO createReqDTO) {
        return productCommentService.createComment(createReqDTO);
    }

}
