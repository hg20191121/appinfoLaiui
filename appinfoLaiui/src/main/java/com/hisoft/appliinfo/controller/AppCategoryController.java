package com.hisoft.appliinfo.controller;

import com.alibaba.fastjson.JSONArray;
import com.hisoft.appliinfo.pojo.AppCategory;
import com.hisoft.appliinfo.service.appCategory.AppCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/appCategory")
public class AppCategoryController {
    @Autowired
    private AppCategoryService appCategoryService;

    /**
     * 返回二级菜单列表
     * @param pid
     * @return
     */
    @RequestMapping("/categoryChildList.json")
    @ResponseBody
    public String queryAllCategory(@RequestParam(value = "pid",defaultValue = "")String pid){
        List<AppCategory> appCategories = appCategoryService.queryByParentId(Integer.parseInt(pid));
        return JSONArray.toJSONString(appCategories);
    }

    /**
     * 返回三级菜单列表
     * @param pid
     * @return
     */
    @RequestMapping("/categoryEndChildList.json")
    @ResponseBody
    public String queryEndChildCategory(@RequestParam(value = "pid",defaultValue = "")String pid){
        List<AppCategory> appCategories = appCategoryService.queryEnd(Integer.parseInt(pid));
        return JSONArray.toJSONString(appCategories);
    }

}
