package com.sbuzhi.gg.web.entity;
/**
 * 分页实体
 * @author Stealth.Lee
 * @date 2016年11月19日 下午3:34:42
 */
public class Paging {
	
	/**
	 * 默认每页大小
	 */
	public static final int ROWS = 25;
	
	/**
	 * 默认当前页码
	 */
	public static final int PAGE = 1;
	
	/**
	 * 当前页码
	 */
	private int pageNo;

	/**
	 * 每页显示记录条数
	 */
	private int pageSize;
	
	/**
	 * 分页开始行
	 */
	private int start;
	
	/**
	 * 分页结束行
	 */
	private int end;
	
	/**
	 * 总记录条数
	 */
	private int total;

	public Paging() {
		super();
		this.pageNo = PAGE;
		this.pageSize = ROWS;
	}

	public Paging(int pageNo, int pageSize) {
		super();
		this.pageNo = pageNo;
		this.pageSize = pageSize;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getStart() {
		if(start == 0){
			return (pageNo-1) * pageSize;
		}
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		if(end == 0){
			return pageNo * pageSize;
		}
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
}
