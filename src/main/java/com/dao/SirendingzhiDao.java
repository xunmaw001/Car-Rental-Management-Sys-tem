package com.dao;

import com.entity.SirendingzhiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.SirendingzhiVO;
import com.entity.view.SirendingzhiView;


/**
 * 私人定制
 * 
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
public interface SirendingzhiDao extends BaseMapper<SirendingzhiEntity> {
	
	List<SirendingzhiVO> selectListVO(@Param("ew") Wrapper<SirendingzhiEntity> wrapper);
	
	SirendingzhiVO selectVO(@Param("ew") Wrapper<SirendingzhiEntity> wrapper);
	
	List<SirendingzhiView> selectListView(@Param("ew") Wrapper<SirendingzhiEntity> wrapper);

	List<SirendingzhiView> selectListView(Pagination page,@Param("ew") Wrapper<SirendingzhiEntity> wrapper);
	
	SirendingzhiView selectView(@Param("ew") Wrapper<SirendingzhiEntity> wrapper);
	
}
