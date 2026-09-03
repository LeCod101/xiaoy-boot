package cn.xiaoy.module.trade.enums.aftersale;

import cn.xiaoy.framework.common.core.ArrayValuable;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.util.Arrays;

/**
 * 交易售后 - 方式
 *
 * @author 小Y系统
 */
@RequiredArgsConstructor
@Getter
public enum AfterSaleWayEnum implements ArrayValuable<Integer> {

    REFUND(10, "仅退款"),
    RETURN_AND_REFUND(20, "退货退款");

    public static final Integer[] ARRAYS = Arrays.stream(values()).map(AfterSaleWayEnum::getWay).toArray(Integer[]::new);

    /**
     * 方式
     */
    private final Integer way;
    /**
     * 方式名
     */
    private final String name;

    @Override
    public Integer[] array() {
        return ARRAYS;
    }

}
