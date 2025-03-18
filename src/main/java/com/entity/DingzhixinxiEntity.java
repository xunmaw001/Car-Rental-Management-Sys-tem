package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 定制信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
@TableName("dingzhixinxi")
public class DingzhixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public DingzhixinxiEntity() {
		
	}
	
	public DingzhixinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 汽车名称
	 */
					
	private String qichemingcheng;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date qucheriqi;
	
	/**
	 * 是否支付
	 */
					
	private String ispay;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：汽车名称
	 */
	public void setQichemingcheng(String qichemingcheng) {
		this.qichemingcheng = qichemingcheng;
	}
	/**
	 * 获取：汽车名称
	 */
	public String getQichemingcheng() {
		return qichemingcheng;
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
