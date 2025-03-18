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
 * 问题上报
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
@TableName("wentishangbao")
public class WentishangbaoEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public WentishangbaoEntity() {
		
	}
	
	public WentishangbaoEntity(T t) {
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
	 * 标题
	 */
					
	private String biaoti;
	
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
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	 * 设置：标题
	 */
	public void setBiaoti(String biaoti) {
		this.biaoti = biaoti;
	}
	/**
	 * 获取：标题
	 */
	public String getBiaoti() {
		return biaoti;
	}
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
