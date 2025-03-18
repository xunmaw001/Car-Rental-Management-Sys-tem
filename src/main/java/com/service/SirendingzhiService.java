package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.SirendingzhiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.SirendingzhiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.SirendingzhiView;


/**
 * 私人定制
 *
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
public interface SirendingzhiService extends IService<SirendingzhiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<SirendingzhiVO> selectListVO(Wrapper<SirendingzhiEntity> wrapper);
   	
   	SirendingzhiVO selectVO(@Param("ew") Wrapper<SirendingzhiEntity> wrapper);
   	
   	List<SirendingzhiView> selectListView(Wrapper<SirendingzhiEntity> wrapper);
   	
   	SirendingzhiView selectView(@Param("ew") Wrapper<SirendingzhiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<SirendingzhiEntity> wrapper);
   	
}

