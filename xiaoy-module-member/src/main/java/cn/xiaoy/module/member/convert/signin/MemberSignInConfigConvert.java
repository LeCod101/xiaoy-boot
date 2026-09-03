package cn.xiaoy.module.member.convert.signin;

import cn.xiaoy.module.member.controller.admin.signin.vo.config.MemberSignInConfigCreateReqVO;
import cn.xiaoy.module.member.controller.admin.signin.vo.config.MemberSignInConfigRespVO;
import cn.xiaoy.module.member.controller.admin.signin.vo.config.MemberSignInConfigUpdateReqVO;
import cn.xiaoy.module.member.controller.app.signin.vo.config.AppMemberSignInConfigRespVO;
import cn.xiaoy.module.member.dal.dataobject.signin.MemberSignInConfigDO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * 签到规则 Convert
 *
 * @author 小Y系统
 */
@Mapper
public interface MemberSignInConfigConvert {

    MemberSignInConfigConvert INSTANCE = Mappers.getMapper(MemberSignInConfigConvert.class);

    MemberSignInConfigDO convert(MemberSignInConfigCreateReqVO bean);

    MemberSignInConfigDO convert(MemberSignInConfigUpdateReqVO bean);

    MemberSignInConfigRespVO convert(MemberSignInConfigDO bean);

    List<MemberSignInConfigRespVO> convertList(List<MemberSignInConfigDO> list);

    List<AppMemberSignInConfigRespVO> convertList02(List<MemberSignInConfigDO> list);

}
