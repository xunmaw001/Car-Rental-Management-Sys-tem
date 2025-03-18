package com.dao;

import com.entity.YajinkouchuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YajinkouchuVO;
import com.entity.view.YajinkouchuView;


/**
 * 押金扣除
 * 
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
public interface YajinkouchuDao extends BaseMapper<YajinkouchuEntity> {
	
	List<YajinkouchuVO> selectListVO(@Param("ew") Wrapper<YajinkouchuEntity> wrapper);
	
	YajinkouchuVO selectVO(@Param("ew") Wrapper<YajinkouchuEntity> wrapper);
	
	List<YajinkouchuView> selectListView(@Param("ew") Wrapper<YajinkouchuEntity> wrapper);

	List<YajinkouchuView> selectListView(Pagination page,@Param("ew") Wrapper<YajinkouchuEntity> wrapper);
	
	YajinkouchuView selectView(@Param("ew") Wrapper<YajinkouchuEntity> wrapper);
	
}
