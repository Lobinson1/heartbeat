package cjx.heartbeat.blog.management.dao;

import cjx.heartbeat.blog.management.entity.User;
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
@Table(name="t_cjx_user")
@Qualifier
public interface UserDao extends CrudRepository<User, Integer>{

	User getById(Integer id);

	User getByUsername(String username);

	Integer countByUsername(String username);

	Integer countByUsernameAndPassword(String username, String password);

}
