package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.WentishangbaoEntity;
import com.entity.view.WentishangbaoView;

import com.service.WentishangbaoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 问题上报
 * 后端接口
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
@RestController
@RequestMapping("/wentishangbao")
public class WentishangbaoController {
    @Autowired
    private WentishangbaoService wentishangbaoService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,WentishangbaoEntity wentishangbao, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wentishangbao.setYonghuming((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<WentishangbaoEntity> ew = new EntityWrapper<WentishangbaoEntity>();
		PageUtils page = wentishangbaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wentishangbao), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,WentishangbaoEntity wentishangbao, HttpServletRequest request){
        EntityWrapper<WentishangbaoEntity> ew = new EntityWrapper<WentishangbaoEntity>();
		PageUtils page = wentishangbaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, wentishangbao), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( WentishangbaoEntity wentishangbao){
       	EntityWrapper<WentishangbaoEntity> ew = new EntityWrapper<WentishangbaoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( wentishangbao, "wentishangbao")); 
        return R.ok().put("data", wentishangbaoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(WentishangbaoEntity wentishangbao){
        EntityWrapper< WentishangbaoEntity> ew = new EntityWrapper< WentishangbaoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( wentishangbao, "wentishangbao")); 
		WentishangbaoView wentishangbaoView =  wentishangbaoService.selectView(ew);
		return R.ok("查询问题上报成功").put("data", wentishangbaoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        WentishangbaoEntity wentishangbao = wentishangbaoService.selectById(id);
        return R.ok().put("data", wentishangbao);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        WentishangbaoEntity wentishangbao = wentishangbaoService.selectById(id);
        return R.ok().put("data", wentishangbao);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody WentishangbaoEntity wentishangbao, HttpServletRequest request){
    	wentishangbao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wentishangbao);

        wentishangbaoService.insert(wentishangbao);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody WentishangbaoEntity wentishangbao, HttpServletRequest request){
    	wentishangbao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(wentishangbao);

        wentishangbaoService.insert(wentishangbao);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody WentishangbaoEntity wentishangbao, HttpServletRequest request){
        //ValidatorUtils.validateEntity(wentishangbao);
        wentishangbaoService.updateById(wentishangbao);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        wentishangbaoService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null && !map.get("remindstart").toString().equals("")) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null && !map.get("remindend").toString().equals("")) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<WentishangbaoEntity> wrapper = new EntityWrapper<WentishangbaoEntity>();
		if(map.get("remindstart")!=null && !map.get("remindstart").toString().equals("")) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null && !map.get("remindend").toString().equals("")) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("yonghuming", (String)request.getSession().getAttribute("username"));
		}

		int count = wentishangbaoService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
