package com.dao;

import com.entity.QichezulinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QichezulinVO;
import com.entity.view.QichezulinView;


/**
 * 汽车租赁
 * 
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
public interface QichezulinDao extends BaseMapper<QichezulinEntity> {
	
	List<QichezulinVO> selectListVO(@Param("ew") Wrapper<QichezulinEntity> wrapper);
	
	QichezulinVO selectVO(@Param("ew") Wrapper<QichezulinEntity> wrapper);
	
	List<QichezulinView> selectListView(@Param("ew") Wrapper<QichezulinEntity> wrapper);

	List<QichezulinView> selectListView(Pagination page,@Param("ew") Wrapper<QichezulinEntity> wrapper);
	
	QichezulinView selectView(@Param("ew") Wrapper<QichezulinEntity> wrapper);
	
}
