package com.entity.view;

import com.entity.SirendingzhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 私人定制
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
@TableName("sirendingzhi")
public class SirendingzhiView  extends SirendingzhiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public SirendingzhiView(){
	}
 
 	public SirendingzhiView(SirendingzhiEntity sirendingzhiEntity){
 	try {
			BeanUtils.copyProperties(this, sirendingzhiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
