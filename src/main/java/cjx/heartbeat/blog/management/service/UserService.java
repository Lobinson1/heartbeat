package cjx.heartbeat.blog.management.service;

import cjx.heartbeat.blog.management.dao.UserDao;
import cjx.heartbeat.blog.management.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/12/6
 */
@Service
public class UserService extends BaseService<User, Integer> {

	private final UserDao userDao;

	@Autowired
	public UserService(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public CrudRepository<User, Integer> getEntityDao() {
		return userDao;
	}

	public User getByUsername(String username){
		return userDao.getByUsername(username);
	}

	public boolean checkUsername(String username){
		return userDao.countByUsername(username) <= 0;
	}

	public boolean checkLogin(String username, String password){
		return userDao.countByUsernameAndPassword(username, password) == 1;
	}

}
