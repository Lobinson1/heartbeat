package cjx.heartbeat.blog;

import cjx.heartbeat.blog.management.service.UserService;
import net.coobird.thumbnailator.Thumbnails;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.io.File;
import java.io.IOException;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/12/6
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
@WebAppConfiguration
public class TestApplication {

	@Autowired
	private UserService userService;

	@Test
	public void testtest(){
		System.out.println(userService.checkUsername("lobinson"));
	}

	@Test
	public void changeImg() {
		try {
			Thumbnails.of(new File("D://upload/images/pic_9.jpg"))
					.scale(1)
					.outputQuality(0.5f)
					.toFile(new File("D://upload/images/pic_9_bak.jpg"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
