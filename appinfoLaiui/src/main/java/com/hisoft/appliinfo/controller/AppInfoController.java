package com.hisoft.appliinfo.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.hisoft.appliinfo.pojo.AppCategory;
import com.hisoft.appliinfo.pojo.AppInfo;
import com.hisoft.appliinfo.pojo.DataDictionary;
import com.hisoft.appliinfo.service.appCategory.AppCategoryService;
import com.hisoft.appliinfo.service.appInfo.AppInfoService;
import com.hisoft.appliinfo.service.dataDictionary.DataDictionaryService;
import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/appInfoController")
public class AppInfoController {
    @Autowired
    private AppInfoService appInfoService;
    @Autowired
    private AppCategoryService appCategoryService;
    @Autowired
    private DataDictionaryService dataDictionaryService;

    @RequestMapping(value = "/order-list.html")
    public String queryAll(Model model) {
        List<AppInfo> appInfos = appInfoService.queryAll(null);
        List<AppCategory> appCategories = appCategoryService.queryAll();
        List<DataDictionary> app_status = dataDictionaryService.queryByTypeCode("APP_STATUS");
        List<DataDictionary> app_flatform = dataDictionaryService.queryByTypeCode("APP_FLATFORM");
        Integer count = appInfoService.getCount();

        model.addAttribute("appStatus",app_status);
        model.addAttribute("appFlatForms",app_flatform);
        model.addAttribute("appInfoList", appInfos);
        model.addAttribute("categoryList", appCategories);
        model.addAttribute("totalRecord", count);

        return "order-list";
    }

    @RequestMapping(value = "/order-list.page")
    @ResponseBody
    public String queryPage(Integer currNo){
        List<AppInfo> appInfos = appInfoService.queryAll(currNo);
        return JSONArray.toJSONString(appInfos);
    }

    @RequestMapping(value = "/queryAppInfo.json")
    @ResponseBody
    public String queryAppInfo(@RequestParam Map<String,Object> formField){
        //含分页信息
        List<AppInfo> appInfos = appInfoService.queryAllByMap(formField);
        return JSONArray.toJSONString(appInfos);
    }

    /**
     * 进入订单展示页面
     * @return
     */
    @RequestMapping(value = "/order-view.html")
    public String toOrderView(){
        return "order-view";
    }

    @RequestMapping(value = "/getAppCountByMap.json")
    @ResponseBody
    public String getCountByMap(@RequestParam Map<String,Object> formField){
        Integer countByMap = appInfoService.getCountByMap(formField);
        return JSON.toJSONString(countByMap);
    }

    /**
     * 跳转到appinfo修改界面
     */
    @RequestMapping(value = "/app-modify.html")
    public String toAppModify(){
        return "app-modify";
    }

}
