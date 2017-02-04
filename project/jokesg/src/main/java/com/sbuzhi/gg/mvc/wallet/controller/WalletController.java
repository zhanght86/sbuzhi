package com.sbuzhi.gg.mvc.wallet.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sbuzhi.gg.mvc.sys.entity.User;
import com.sbuzhi.gg.mvc.sys.utils.UserUtils;
import com.sbuzhi.gg.mvc.wallet.entity.Products;
import com.sbuzhi.gg.mvc.wallet.service.ProductsService;
import com.sbuzhi.gg.web.controller.BaseController;
/**
 * 钱包控制器
 * @author stealth.Lee
 * @date 2016年12月5日 上午9:30:30
 */
@Controller
@RequestMapping("wallet")
public class WalletController extends BaseController {
	
	@Resource
	private ProductsService productsService;
	
	@RequestMapping("")
	public String index(Model model){
		User user = UserUtils.getUser();
		model.addAttribute("products", productsService.finList(user.getId()));
		return "wallet/wallet";
	}
	
	/**
	 * G站商城
	 * @param model
	 * @return
	 */
	@RequestMapping("recharge")
	public String recharge(Model model){
		model.addAttribute("productsAll", productsService.findAllList(new Products()));
		return "wallet/recharge";
	}
	
}
