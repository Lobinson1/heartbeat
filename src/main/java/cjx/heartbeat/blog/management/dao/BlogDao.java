package cjx.heartbeat.blog.management.dao;

import cjx.heartbeat.blog.management.entity.Blog;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/12/6
 */
@Repository
@Qualifier
@Table(name = "t_cjx_blog")
public interface BlogDao extends CrudRepository<Blog, Integer>{

	Integer countByTitle(String title);

}
