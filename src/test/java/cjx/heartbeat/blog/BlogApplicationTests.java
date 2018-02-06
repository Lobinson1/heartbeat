package cjx.heartbeat.blog;

import cjx.heartbeat.blog.management.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
@WebAppConfiguration
public class BlogApplicationTests {

	@Test
	public void contextLoads() {
	}

	@Autowired
	private UserService userService;

	@Test
	public void testtest(){
		System.out.println(userService.checkUsername("lobinson"));
	}

}
