package cjx.heartbeat.blog.management.dao;

import cjx.heartbeat.blog.management.entity.Type;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;
import java.util.List;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/12/6
 */
@Repository
@Qualifier
@Table(name = "t_cjx_type")
public interface TypeDao extends CrudRepository<Type, Integer> {

}
