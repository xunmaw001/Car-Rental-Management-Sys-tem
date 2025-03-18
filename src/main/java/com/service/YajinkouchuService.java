package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YajinkouchuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YajinkouchuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YajinkouchuView;


/**
 * 押金扣除
 *
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
public interface YajinkouchuService extends IService<YajinkouchuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YajinkouchuVO> selectListVO(Wrapper<YajinkouchuEntity> wrapper);
   	
   	YajinkouchuVO selectVO(@Param("ew") Wrapper<YajinkouchuEntity> wrapper);
   	
   	List<YajinkouchuView> selectListView(Wrapper<YajinkouchuEntity> wrapper);
   	
   	YajinkouchuView selectView(@Param("ew") Wrapper<YajinkouchuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YajinkouchuEntity> wrapper);
   	
}

