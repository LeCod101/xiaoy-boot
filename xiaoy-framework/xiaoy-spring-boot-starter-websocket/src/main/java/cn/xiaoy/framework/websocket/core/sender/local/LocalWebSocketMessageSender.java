package cn.xiaoy.framework.websocket.core.sender.local;

import cn.xiaoy.framework.websocket.core.sender.AbstractWebSocketMessageSender;
import cn.xiaoy.framework.websocket.core.sender.WebSocketMessageSender;
import cn.xiaoy.framework.websocket.core.session.WebSocketSessionManager;

/**
 * 本地的 {@link WebSocketMessageSender} 实现类
 *
 * 注意：仅仅适合单机场景！！！
 *
 * @author 小Y系统
 */
public class LocalWebSocketMessageSender extends AbstractWebSocketMessageSender {

    public LocalWebSocketMessageSender(WebSocketSessionManager sessionManager) {
        super(sessionManager);
    }

}
