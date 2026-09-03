package cn.xiaoy.module.crm.service.customer;

import cn.xiaoy.module.crm.controller.admin.customer.vo.poolconfig.CrmCustomerPoolConfigSaveReqVO;
import cn.xiaoy.module.crm.dal.dataobject.customer.CrmCustomerPoolConfigDO;

import javax.validation.Valid;

/**
 * 客户公海配置 Service 接口
 *
 * @author 小Y系统
 */
public interface CrmCustomerPoolConfigService {

    /**
     * 获得客户公海配置
     *
     * @return 客户公海配置
     */
    CrmCustomerPoolConfigDO getCustomerPoolConfig();

    /**
     * 保存客户公海配置
     *
     * @param saveReqVO 更新信息
     */
    void saveCustomerPoolConfig(@Valid CrmCustomerPoolConfigSaveReqVO saveReqVO);

}
