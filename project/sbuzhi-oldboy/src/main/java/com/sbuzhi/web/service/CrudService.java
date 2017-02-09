package com.sbuzhi.web.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.web.dao.CrudDao;
import com.sbuzhi.web.entity.DataEntity;
/**
 * Service实现类
 * @author stealth.Lee
 * @date 2017年2月7日 下午4:16:58
 */
@Transactional(readOnly = true)
public abstract class CrudService<D extends CrudDao<T>, T extends DataEntity<T>> extends BaseService{
	
	@Autowired
	protected D dao;
	
	/**
	 * 获取单条数据
	 * @param id
	 * @return
	 */
	public T get(String id){
		return dao.get(id);
	}
	
	/**
	 * 根据实体获取单条数据
	 * @param entity
	 * @return
	 */
	public T get(T entity){
		return dao.get(entity);
	}
	
	/**
	 * 根据父ID查询数据列表
	 * @param pId
	 * @return
	 */
	public List<T> findList(String pId){
		return dao.findList(pId);
	}
	
	/**
	 * 根据实体查询数据列表
	 * @param entity
	 * @return
	 */
	public List<T> findList(T entity){
		return dao.findList(entity);
	}
	
	/**
	 * 查询所有数据
	 * @param entity
	 * @return
	 */
	public List<T> findAllList(){
		return dao.findAllList();
	};
	
	/**
	 * 修改数据
	 * @param entity
	 * @return
	 */
	@Transactional(readOnly = false)
	public void save(T entity){
		if(StringUtils.isNotBlank(entity.getId())){
			entity.preInsert();
			dao.insert(entity);
		} else {
			entity.preUpdate();
			dao.update(entity);
		}
	}
	
	/**
	 * 删除单条数据（一般为逻辑删除，更新del_flag字段为1）
	 * @param id
	 * @return
	 */
	@Transactional(readOnly = false)
	public void delete(String id){
		dao.delete(id);
	}
	
	/**
	 * 删除数据（一般为逻辑删除，更新del_flag字段为1）
	 * @param entity
	 * @return
	 */
	@Transactional(readOnly = false)
	public void delete(T entity){
		dao.delete(entity);
	}
	
}
