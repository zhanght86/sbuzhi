package com.jokesg.gg.mvc.wallet.service;

import org.springframework.stereotype.Service;

import com.jokesg.gg.mvc.wallet.dao.ProductsDao;
import com.jokesg.gg.mvc.wallet.entity.Products;
import com.jokesg.gg.web.service.CrudService;
/**
 * 商品Service
 * @author stealth.Lee
 * @date 2016年12月5日 上午10:43:18
 */
@Service
public class ProductsService extends CrudService<ProductsDao, Products> {

}
