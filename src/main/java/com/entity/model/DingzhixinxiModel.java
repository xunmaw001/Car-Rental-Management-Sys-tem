package com.entity.model;

import com.entity.DingzhixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 定制信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
public class DingzhixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 定制状况
	 */
	
	private String dingzhizhuangkuang;
		
	/**
	 * 价格
	 */
	
	private Integer jiage;
		
	/**
	 * 取车日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date qucheriqi;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
				
	
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
	 * 设置：定制状况
	 */
	 
	public void setDingzhizhuangkuang(String dingzhizhuangkuang) {
		this.dingzhizhuangkuang = dingzhizhuangkuang;
	}
	
	/**
	 * 获取：定制状况
	 */
	public String getDingzhizhuangkuang() {
		return dingzhizhuangkuang;
	}
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setJiage(Integer jiage) {
		this.jiage = jiage;
	}
	
	/**
	 * 获取：价格
	 */
	public Integer getJiage() {
		return jiage;
	}
				
	
	/**
	 * 设置：取车日期
	 */
	 
	public void setQucheriqi(Date qucheriqi) {
		this.qucheriqi = qucheriqi;
	}
	
	/**
	 * 获取：取车日期
	 */
	public Date getQucheriqi() {
		return qucheriqi;
	}
				
	
	/**
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
			
}
