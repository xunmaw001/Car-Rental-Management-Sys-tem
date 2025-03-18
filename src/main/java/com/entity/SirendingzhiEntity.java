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
 * 私人定制
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
@TableName("sirendingzhi")
public class SirendingzhiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public SirendingzhiEntity() {
		
	}
	
	public SirendingzhiEntity(T t) {
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
	 * 汽车类型
	 */
					
	private String qicheleixing;
	
	/**
	 * 颜色
	 */
					
	private String yanse;
	
	/**
	 * 座位
	 */
					
	private String zuowei;
	
	/**
	 * 排量
	 */
					
	private String pailiang;
	
	/**
	 * 备注
	 */
					
	private String beizhu;
	
	/**
	 * 日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date riqi;
	
	/**
	 * 用户名
	 */
					
	private String yonghuming;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 手机
	 */
					
	private String shouji;
	
	
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
	 * 设置：汽车类型
	 */
	public void setQicheleixing(String qicheleixing) {
		this.qicheleixing = qicheleixing;
	}
	/**
	 * 获取：汽车类型
	 */
	public String getQicheleixing() {
		return qicheleixing;
	}
	/**
	 * 设置：颜色
	 */
	public void setYanse(String yanse) {
		this.yanse = yanse;
	}
	/**
	 * 获取：颜色
	 */
	public String getYanse() {
		return yanse;
	}
	/**
	 * 设置：座位
	 */
	public void setZuowei(String zuowei) {
		this.zuowei = zuowei;
	}
	/**
	 * 获取：座位
	 */
	public String getZuowei() {
		return zuowei;
	}
	/**
	 * 设置：排量
	 */
	public void setPailiang(String pailiang) {
		this.pailiang = pailiang;
	}
	/**
	 * 获取：排量
	 */
	public String getPailiang() {
		return pailiang;
	}
	/**
	 * 设置：备注
	 */
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}
	/**
	 * 设置：日期
	 */
	public void setRiqi(Date riqi) {
		this.riqi = riqi;
	}
	/**
	 * 获取：日期
	 */
	public Date getRiqi() {
		return riqi;
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
	 * 设置：手机
	 */
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}

}
