package com.sbuzhi.gg.mvc.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sbuzhi.gg.common.utils.StringUtil;
import com.sbuzhi.gg.mvc.cms.dao.MenusDao;
import com.sbuzhi.gg.mvc.sys.entity.Menu;
import com.sbuzhi.gg.web.entity.DataEntity;
import com.sbuzhi.gg.web.service.CrudService;
/**
 * 菜单Service
 * @author stealth.Lee
 * @date 2016年11月15日 下午4:46:11
 */
@Service
@Transactional(readOnly = true)
public class MenusService extends CrudService<MenusDao, Menu>{

	public List<Menu> getV1(){
		return dao.getParentV1();
	}
	
	public List<Menu> getMenuTree() {
		List<Menu> lv1Menus = null;
		Menu rootMenu = new Menu();
		rootMenu.setId("1");
		lv1Menus = dao.getMenuTree(rootMenu);
		for (Menu lv1Menu : lv1Menus) {
			List<Menu> lv2Menus = dao.getMenuTree(lv1Menu);
			lv1Menu.setMenus(lv2Menus);
		}
		return lv1Menus;
	}
	
	public List<String> getMenu(String roleId){
		return dao.getMenuByRole(roleId);
	}
	
	@Transactional(readOnly = false)
	public void deleteMenu(Menu menu){
		if(StringUtil.isStrEqual(menu.getDelFlag(), DataEntity.DEL_FLAG_DELETE)){
			menu.setDelFlag(DataEntity.DEL_FLAG_NORMAL);
		} else {
			menu.setDelFlag(DataEntity.DEL_FLAG_DELETE);
		}
		menu.preUpdate();
		dao.update(menu);
	}
	
	public List<Menu> getMenuCategories(){
		return dao.menuCategories();
	}
	
}
