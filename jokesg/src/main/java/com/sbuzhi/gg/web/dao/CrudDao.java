package com.sbuzhi.gg.web.dao;

import java.util.List;

/**
 * DAO支持类实现
 * Created by Stealth.Lee on 2016/9/10.
 */
public interface CrudDao<T> extends BaseDao {

	/**
	 * 通过ID获取单条数据
	 * @param id
	 * @return
	 */
	public T get(String id);
	
	/**
	 * 通过实体获取单条数据
	 * @param entity
	 * @return
	 */
	public T get(T entity);
	
	/**
	 * 通过用户Id查询当前用户所有的数据列表
	 * @param entity
	 * @return
	 */
	public List<T> findList(String userId);
	
	/**
	 * 通过实体查询数据列表
	 * @param entity
	 * @return
	 */
	public List<T> findList(T entity);
	
	/**
	 * 查询所有数据列表
	 * @return
	 */
	public List<T> findAllList();
	
	/**
	 * 根据实体查询所有数据列表
	 * @return
	 */
	public List<T> findAllList(T entity);
	
	/**
	 * 插入数据
	 * @param entity
	 * @return
	 */
	public int insert(T entity);
	
	/**
	 * 更新数据
	 * @param entity
	 * @return
	 */
	public int update(T entity);
	
	/**
	 * 删除数据（一般为逻辑删除，更新del_flag字段为1）
	 * @param id
	 * @return
	 */
	public int delete(String id);
	
	/**
	 * 删除数据（一般为逻辑删除，更新del_flag字段为1）
	 * @param entity
	 * @return
	 */
	public int delete(T entity);
	
}