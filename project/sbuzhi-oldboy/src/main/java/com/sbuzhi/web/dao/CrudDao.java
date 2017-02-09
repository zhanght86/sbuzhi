package com.sbuzhi.web.dao;

import java.util.List;

/**
 * Dao实现类
 * @author stealth.Lee
 * @date 2017年2月7日 下午4:04:37
 */
public interface CrudDao<T> extends BaseDao {
	
	/**
	 * 根据ID获取单条数据
	 * @param id
	 * @return
	 */
	public T get(String id);
	
	/**
	 * 根据实体获取单条数据
	 * @param entity
	 * @return
	 */
	public T get(T entity);
	
	/**
	 * 根据父ID查询数据列表
	 * @param pId
	 * @return
	 */
	public List<T> findList(String pId);
	
	/**
	 * 根据实体查询数据列表
	 * @param entity
	 * @return
	 */
	public List<T> findList(T entity);
	
	/**
	 * 查询所有数据
	 * @param entity
	 * @return
	 */
	public List<T> findAllList();
	
	/**
	 * 插入数据
	 * @param entity
	 * @return
	 */
	public int insert(T entity);

	/**
	 * 修改数据
	 * @param entity
	 * @return
	 */
	public int update(T entity);
	
	/**
	 * 删除单条数据（一般为逻辑删除，更新del_flag字段为1）
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
