package com.lxc.main;

import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class MainTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		createTables();
	}

	/**
	 * 根据配置文件生成数据库表
	 */
	public static void createTables() {
		Configuration cfg = new Configuration().configure();  
		SchemaExport export = new SchemaExport(cfg); 
		export.create(true, true);
	}
}
