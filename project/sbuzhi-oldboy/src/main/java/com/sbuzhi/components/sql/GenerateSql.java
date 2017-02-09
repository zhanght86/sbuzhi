package com.sbuzhi.components.sql;
import org.apache.commons.lang3.StringUtils;

import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.ComThread;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;
/**
 * word生成sql.
 * word表格请遵守生成样式
 * @author stealth.Lee
 * @date 2017年1月4日 上午10:33:53
 */
public class GenerateSql {
	
	/**
	 *  word进程对象
	 */
	private ActiveXComponent word = null;
	
	/**
	 * word文档集合
	 */
	private Dispatch documents = null;
	
	/**
	 * 当前word文档
	 */
	private Dispatch doc = null;

	public GenerateSql() {
		if(word == null){
			// 启动Word
			word = new ActiveXComponent("Word.Application");
			// 设置可见
			word.setProperty("Visible", new Variant(true));
		}
		if(documents == null){
			// documents表示word的所有文档窗口，（word是多文档应用程序）　
			documents = Dispatch.get(word, "Documents").toDispatch();
		}
	}
	
	/**
	 * 打开一个已有的word文件
	 * @param fileName 文件路径
	 * @return 插入点
	 */
	public Dispatch openWord(String fileName){
		Dispatch selection = null;
		if(doc == null){
			doc = Dispatch.call(documents, "open", fileName).toDispatch();
			selection = Dispatch.get(word, "Selection").toDispatch();
		}
		return selection;
	}
	
	/**
	 * 关闭当前word文档
	 */
	public void close(){
		if(doc != null){
			Dispatch.call(doc, "Save");
			Dispatch.call(doc, "Close"); 
			doc = null;
		}
		if(word != null){
			// 关闭word如果没有word会一直启用，当第二次调用时就会出错　
			Dispatch.call(word,"Quit"); 
			word = null;
		}
	}
	
	/**
	 * 获取当前文档所有的表格
	 * @return
	 * @throws Exception 
	 */
	public Dispatch getTables() throws Exception{
		if(doc == null){
			throw new Exception("当前文档读取错误。请重试");
		}
		return Dispatch.get(doc, "Tables").toDispatch();
	}
	
	/**
	 * 查找表
	 * @param tableIndex 表索引，从1开始
	 * @return
	 * @throws Exception
	 */
	public Dispatch getTable(int tableIndex) throws Exception{
		Dispatch tables = getTables();
		return Dispatch.call(tables, "Item", new Variant(tableIndex)).toDispatch();
	}
	
	/**
	 * 获取某表格具体的单元格
	 * @param table 表
	 * @param row 行
	 * @param cols 列
	 * @return
	 */
	public Dispatch getTableCell(Dispatch table, int row, int cols){
		return Dispatch.call(table, "Cell", new Variant(row), new Variant(cols)).toDispatch();
	}
	
	/**
	 * 获取某表格具体的单元格
	 * @param table 表
	 * @param row 行
	 * @param cols 列
	 * @return
	 */
	public String getTableCellToString(Dispatch table, int row, int cols){
		Dispatch cell = getTableCell(table,row,cols);
		Dispatch range = Dispatch.get(cell, "Range").toDispatch();
		String text = Dispatch.get(range, "Text").toString();
		return text.substring(0, text.length() - 2);
	}
	
	public static void main(String[] args) throws Exception {
		StringBuffer str = new StringBuffer("CREATE TABLE").append(" ");
		// 启动office进程,使用结束后调用Release方法进行销毁
		ComThread.InitSTA();
		GenerateSql sql = new GenerateSql();
		sql.openWord("G:\\sbuzhi\\doc\\oldboy\\oldboy数据库设计.doc");
		Dispatch table = sql.getTable(2);
		String tableName = sql.getTableCellToString(table, 1, 2);
		String notes = sql.getTableCellToString(table, 1, 4);
		str.append(tableName).append("(").append(" ");
		Dispatch rows = Dispatch.get(table, "Rows").toDispatch();
		int row = Dispatch.get(rows, "Count").getInt();
		for (int i = 3; i <= row; i++) {
			for (int j = 1; j <= 7; j++) {
				if(j == 1 || j == 2){
					str.append(sql.getTableCellToString(table, i, j)).append(" ");
				}
				if(j == 3){
					if(sql.getTableCellToString(table, i, j).equals("Y")){
						str.append("primary key").append(" ");
					} else {
						continue;
					}
				}
				if(j == 4){
					if(sql.getTableCellToString(table, i, j).equals("Y")){
						str.append("AUTO_INCREMENT").append(" ");
					}
				}
				if(j == 5){
					if(sql.getTableCellToString(table, i, j).equals("NOT")){
						str.append("NOT NULL").append(" ");
					} else {
						str.append("NULL").append(" ");
					}
				}
				if(j == 6){
					if(StringUtils.isNotBlank(sql.getTableCellToString(table, i, j))){
						str.append("DEFAULT '").append(sql.getTableCellToString(table, i, j)).append("' ");
					}
				}
				if(j == 7){
					if(StringUtils.isNotBlank(sql.getTableCellToString(table, i, j))){
						str.append("COMMENT '").append(sql.getTableCellToString(table, i, j)).append("' ");
					}
				}
			}
			if((i - 1) != (row - 1)){
				str.append(",").append(" ");
			}
		}
		str.append(")").append(" ").append("COMMENT '").append(notes).append("'");
		System.out.println(str);
		sql.close();
		ComThread.Release();
	}
	
}