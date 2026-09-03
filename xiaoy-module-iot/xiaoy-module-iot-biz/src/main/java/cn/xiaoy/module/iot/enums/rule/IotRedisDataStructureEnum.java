package cn.xiaoy.module.iot.enums.rule;

import cn.xiaoy.framework.common.core.ArrayValuable;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.util.Arrays;

/**
 * IoT Redis 数据结构类型枚举
 *
 * @author 小Y系统
 */
@RequiredArgsConstructor
@Getter
public enum IotRedisDataStructureEnum implements ArrayValuable<Integer> {

    STREAM(1, "Stream"),
    HASH(2, "Hash"),
    LIST(3, "List"),
    SET(4, "Set"),
    ZSET(5, "ZSet"),
    STRING(6, "String");

    private final Integer type;

    private final String name;

    public static final Integer[] ARRAYS = Arrays.stream(values()).map(IotRedisDataStructureEnum::getType).toArray(Integer[]::new);

    @Override
    public Integer[] array() {
        return ARRAYS;
    }

}
