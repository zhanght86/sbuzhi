package com.jokesg.gg.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.jokesg.gg.common.utils.ObjectUtil;
import com.jokesg.gg.web.dao.CrudDao;
import com.jokesg.gg.web.entity.DataEntity;

/**
 * Service支持类实现
 * Created by Stealth.Lee on 2016/9/26.
 * @param <T>
 */
@Transactional(readOnly = true)
public abstract class CrudService<D extends CrudDao<T>, T extends DataEntity<T>> extends BaseService {
	
	/**
	 * 持久层对象
	 */
	@Autowired
	protected D dao;
	
	public T get(String id){
		return dao.get(id);
	}
	
	public T get(T entity){
		return dao.get(entity);
	}
	
	public List<T> finList(String userId){
		return dao.findList(userId);
	}
	
	public List<T> findList(T entity){
		return dao.findList(entity);
	}
	
	public List<T> findAllList(){
		return dao.findAllList();
	}
	
	public List<T> findAllList(T entity){
		return dao.findAllList(entity);
	}
	
	/**
	 * 保存数据（插入或更新）
	 * @param entity
	 * @return
	 */
	@Transactional(readOnly = false)
	public void save(T entity){
		if(ObjectUtil.isAllBlank(entity.getId())){
			entity.preInsert();
			dao.insert(entity);
		}else{
			entity.preUpdate();
			dao.update(entity);
		}
	}
	
	@Transactional(readOnly = false)
	public int delete(String id){
		return dao.delete(id);
	}
	
	@Transactional(readOnly = false)
	public int delete(T entity){
		return dao.delete(entity);
	}
	
}
