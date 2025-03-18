package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YajinkouchuDao;
import com.entity.YajinkouchuEntity;
import com.service.YajinkouchuService;
import com.entity.vo.YajinkouchuVO;
import com.entity.view.YajinkouchuView;

@Service("yajinkouchuService")
public class YajinkouchuServiceImpl extends ServiceImpl<YajinkouchuDao, YajinkouchuEntity> implements YajinkouchuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YajinkouchuEntity> page = this.selectPage(
                new Query<YajinkouchuEntity>(params).getPage(),
                new EntityWrapper<YajinkouchuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YajinkouchuEntity> wrapper) {
		  Page<YajinkouchuView> page =new Query<YajinkouchuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YajinkouchuVO> selectListVO(Wrapper<YajinkouchuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YajinkouchuVO selectVO(Wrapper<YajinkouchuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YajinkouchuView> selectListView(Wrapper<YajinkouchuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YajinkouchuView selectView(Wrapper<YajinkouchuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
