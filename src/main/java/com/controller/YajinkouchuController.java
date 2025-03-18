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

import com.entity.YajinkouchuEntity;
import com.entity.view.YajinkouchuView;

import com.service.YajinkouchuService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 押金扣除
 * 后端接口
 * @author 
 * @email 
 * @date 2020-10-19 15:10:36
 */
@RestController
@RequestMapping("/yajinkouchu")
public class YajinkouchuController {
    @Autowired
    private YajinkouchuService yajinkouchuService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YajinkouchuEntity yajinkouchu, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			yajinkouchu.setYonghuming((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YajinkouchuEntity> ew = new EntityWrapper<YajinkouchuEntity>();
		PageUtils page = yajinkouchuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yajinkouchu), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YajinkouchuEntity yajinkouchu, HttpServletRequest request){
        EntityWrapper<YajinkouchuEntity> ew = new EntityWrapper<YajinkouchuEntity>();
		PageUtils page = yajinkouchuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yajinkouchu), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YajinkouchuEntity yajinkouchu){
       	EntityWrapper<YajinkouchuEntity> ew = new EntityWrapper<YajinkouchuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yajinkouchu, "yajinkouchu")); 
        return R.ok().put("data", yajinkouchuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YajinkouchuEntity yajinkouchu){
        EntityWrapper< YajinkouchuEntity> ew = new EntityWrapper< YajinkouchuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yajinkouchu, "yajinkouchu")); 
		YajinkouchuView yajinkouchuView =  yajinkouchuService.selectView(ew);
		return R.ok("查询押金扣除成功").put("data", yajinkouchuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        YajinkouchuEntity yajinkouchu = yajinkouchuService.selectById(id);
        return R.ok().put("data", yajinkouchu);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        YajinkouchuEntity yajinkouchu = yajinkouchuService.selectById(id);
        return R.ok().put("data", yajinkouchu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YajinkouchuEntity yajinkouchu, HttpServletRequest request){
    	yajinkouchu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yajinkouchu);

        yajinkouchuService.insert(yajinkouchu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YajinkouchuEntity yajinkouchu, HttpServletRequest request){
    	yajinkouchu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yajinkouchu);

        yajinkouchuService.insert(yajinkouchu);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody YajinkouchuEntity yajinkouchu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yajinkouchu);
        yajinkouchuService.updateById(yajinkouchu);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yajinkouchuService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<YajinkouchuEntity> wrapper = new EntityWrapper<YajinkouchuEntity>();
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

		int count = yajinkouchuService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
