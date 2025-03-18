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


import com.dao.SirendingzhiDao;
import com.entity.SirendingzhiEntity;
import com.service.SirendingzhiService;
import com.entity.vo.SirendingzhiVO;
import com.entity.view.SirendingzhiView;

@Service("sirendingzhiService")
public class SirendingzhiServiceImpl extends ServiceImpl<SirendingzhiDao, SirendingzhiEntity> implements SirendingzhiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SirendingzhiEntity> page = this.selectPage(
                new Query<SirendingzhiEntity>(params).getPage(),
                new EntityWrapper<SirendingzhiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<SirendingzhiEntity> wrapper) {
		  Page<SirendingzhiView> page =new Query<SirendingzhiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<SirendingzhiVO> selectListVO(Wrapper<SirendingzhiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public SirendingzhiVO selectVO(Wrapper<SirendingzhiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<SirendingzhiView> selectListView(Wrapper<SirendingzhiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public SirendingzhiView selectView(Wrapper<SirendingzhiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
