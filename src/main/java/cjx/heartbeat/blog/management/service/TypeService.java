package cjx.heartbeat.blog.management.service;

import cjx.heartbeat.blog.management.dao.TypeDao;
import cjx.heartbeat.blog.management.entity.Type;
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
public class TypeService extends BaseService<Type, Integer> {

	@Autowired
	private TypeDao typeDao;

	@Override
	public CrudRepository<Type, Integer> getEntityDao() {
		return typeDao;
	}
}
