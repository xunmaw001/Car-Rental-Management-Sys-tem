package com.entity.vo;

import com.entity.WentishangbaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 问题上报
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
public class WentishangbaoVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 汽车编号
	 */
	
	private String qichebianhao;
		
	/**
	 * 汽车问题
	 */
	
	private String qichewenti;
		
	/**
	 * 上报日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shangbaoriqi;
		
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：汽车编号
	 */
	 
	public void setQichebianhao(String qichebianhao) {
		this.qichebianhao = qichebianhao;
	}
	
	/**
	 * 获取：汽车编号
	 */
	public String getQichebianhao() {
		return qichebianhao;
	}
				
	
	/**
	 * 设置：汽车问题
	 */
	 
	public void setQichewenti(String qichewenti) {
		this.qichewenti = qichewenti;
	}
	
	/**
	 * 获取：汽车问题
	 */
	public String getQichewenti() {
		return qichewenti;
	}
				
	
	/**
	 * 设置：上报日期
	 */
	 
	public void setShangbaoriqi(Date shangbaoriqi) {
		this.shangbaoriqi = shangbaoriqi;
	}
	
	/**
	 * 获取：上报日期
	 */
	public Date getShangbaoriqi() {
		return shangbaoriqi;
	}
				
	
	/**
	 * 设置：用户名
	 */
	 
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
