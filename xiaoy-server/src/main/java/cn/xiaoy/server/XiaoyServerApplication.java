package cn.xiaoy.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * 项目的启动类
 *
 * 如果你碰到启动的问题，请认真阅读 https://doc.xiaoy.cn/quick-start/ 文章
 * 如果你碰到启动的问题，请认真阅读 https://doc.xiaoy.cn/quick-start/ 文章
 * 如果你碰到启动的问题，请认真阅读 https://doc.xiaoy.cn/quick-start/ 文章
 *
 * @author 小Y系统
 */
@SuppressWarnings("SpringComponentScan") // 忽略 IDEA 无法识别 ${xiaoy.info.base-package}
@SpringBootApplication(scanBasePackages = {"${xiaoy.info.base-package}.server", "${xiaoy.info.base-package}.module"})
public class XiaoyServerApplication {

    public static void main(String[] args) {
        // 如果你碰到启动的问题，请认真阅读 https://doc.xiaoy.cn/quick-start/ 文章
        // 如果你碰到启动的问题，请认真阅读 https://doc.xiaoy.cn/quick-start/ 文章
        // 如果你碰到启动的问题，请认真阅读 https://doc.xiaoy.cn/quick-start/ 文章

        SpringApplication.run(XiaoyServerApplication.class, args);
//        new SpringApplicationBuilder(XiaoyServerApplication.class)
//                .applicationStartup(new BufferingApplicationStartup(20480))
//                .run(args);

        // 如果你碰到启动的问题，请认真阅读 https://doc.xiaoy.cn/quick-start/ 文章
        // 如果你碰到启动的问题，请认真阅读 https://doc.xiaoy.cn/quick-start/ 文章
        // 如果你碰到启动的问题，请认真阅读 https://doc.xiaoy.cn/quick-start/ 文章
    }

}
