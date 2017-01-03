package com.jokesg.gg.mvc.rms.vo;

import com.jokesg.gg.web.entity.Paging;
import com.jokesg.gg.web.entity.VoEntity;
/**
 * 视频分类菜单VO
 * @author stealth.Lee
 * @date 2016年11月25日 上午9:30:58
 */
public class JokesgMenu extends VoEntity<JokesgMenu> {

	/**
	 * 视频ID
	 */
	private String jokesgId;
	
	/**
	 * 菜单ID
	 */
	private String menuId;
	
	/**
	 * 分页
	 */
	private Paging paging;
	
	public String getJokesgId() {
		return jokesgId;
	}

	public void setJokesgId(String jokesgId) {
		this.jokesgId = jokesgId;
	}

	public String getMenuId() {
		return menuId;
	}

	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}

	public Paging getPaging() {
		return paging;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}
	
}
