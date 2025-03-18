package com.entity.view;

import com.entity.YajinkouchuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 押金扣除
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
@TableName("yajinkouchu")
public class YajinkouchuView  extends YajinkouchuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YajinkouchuView(){
	}
 
 	public YajinkouchuView(YajinkouchuEntity yajinkouchuEntity){
 	try {
			BeanUtils.copyProperties(this, yajinkouchuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
