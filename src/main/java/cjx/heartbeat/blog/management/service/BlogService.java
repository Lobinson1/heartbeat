package cjx.heartbeat.blog.management.service;

import cjx.heartbeat.blog.management.dao.BlogDao;
import cjx.heartbeat.blog.management.entity.Blog;
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
public class BlogService extends BaseService<Blog, Integer> {

	@Autowired
	private BlogDao blogDao;

	@Override
	public CrudRepository<Blog, Integer> getEntityDao() {
		return blogDao;
	}

	public boolean checkTitle(String title) {
		return blogDao.countByTitle(title) <= 0;
	}
}
