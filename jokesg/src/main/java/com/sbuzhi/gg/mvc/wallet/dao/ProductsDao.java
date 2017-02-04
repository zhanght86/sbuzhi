package com.sbuzhi.gg.mvc.wallet.dao;

import org.springframework.stereotype.Repository;

import com.sbuzhi.gg.mvc.wallet.entity.Products;
import com.sbuzhi.gg.web.dao.CrudDao;
/**
 * 商品DAO
 * @author stealth.Lee
 * @date 2016年12月5日 上午10:42:29
 */
@Repository
public interface ProductsDao extends CrudDao<Products> {
	
}
