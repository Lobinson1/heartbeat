package cjx.heartbeat.blog.management.service;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * 公共service方法
 * 提供简单的增删改查
 *
 * @author chenjunxu
 * @date 2017/12/6
 */
public abstract class BaseService<T, PK extends Serializable> {

	public abstract CrudRepository<T, PK> getEntityDao();

	@Transactional
	public T save(T t){
		return getEntityDao().save(t);
	}

	@Transactional
	public T update(T t){
		return getEntityDao().save(t);
	}

	public T getById(PK id){
		return getEntityDao().findOne(id);
	}

	public List<T> getAll(){
		return (List<T>) getEntityDao().findAll();
	}

	public List<T> getAll(List<PK> ids){
		return (List<T>) getEntityDao().findAll((Iterable<PK>) ids.iterator());
	}

	@Transactional
	public void delete(PK id){
		getEntityDao().delete(id);
	}

	@Transactional
	public void deleteAll(){
		getEntityDao().deleteAll();
	}

	@Transactional
	public void delete(T t){
		getEntityDao().delete(t);
	}

	public long count() {
		return getEntityDao().count();
	}

	public boolean isExist(PK id) {
		return getEntityDao().exists(id);
	}
}
