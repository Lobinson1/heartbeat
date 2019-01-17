package cjx.heartbeat.blog.management.service;

import cjx.heartbeat.blog.management.constant.Constant;
import cjx.heartbeat.blog.management.dao.BlogDao;
import cjx.heartbeat.blog.management.entity.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Service;

import java.util.List;

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

	public List<Blog> getPageList(Integer pageIndex, Integer pageSize) {
		int pageBegin = (pageIndex - 1) * pageSize;
		return blogDao.getPageList(pageBegin, pageSize);
	}

	public List<Blog> getTopList() {
		return blogDao.findBlogsByIsTopEquals(Constant.YES);
	}

	public List<Blog> getNewList(int size) {
		return blogDao.findBlogsByRecent(size);
	}
}
