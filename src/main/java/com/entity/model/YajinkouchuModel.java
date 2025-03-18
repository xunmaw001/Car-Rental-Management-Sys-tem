package com.entity.model;

import com.entity.YajinkouchuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 押金扣除
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
public class YajinkouchuModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 押金
	 */
	
	private Integer yajin;
		
	/**
	 * 扣除理由
	 */
	
	private String kouchuliyou;
		
	/**
	 * 扣除日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date kouchuriqi;
				
	
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
	 * 设置：押金
	 */
	 
	public void setYajin(Integer yajin) {
		this.yajin = yajin;
	}
	
	/**
	 * 获取：押金
	 */
	public Integer getYajin() {
		return yajin;
	}
				
	
	/**
	 * 设置：扣除理由
	 */
	 
	public void setKouchuliyou(String kouchuliyou) {
		this.kouchuliyou = kouchuliyou;
	}
	
	/**
	 * 获取：扣除理由
	 */
	public String getKouchuliyou() {
		return kouchuliyou;
	}
				
	
	/**
	 * 设置：扣除日期
	 */
	 
	public void setKouchuriqi(Date kouchuriqi) {
		this.kouchuriqi = kouchuriqi;
	}
	
	/**
	 * 获取：扣除日期
	 */
	public Date getKouchuriqi() {
		return kouchuriqi;
	}
			
}
