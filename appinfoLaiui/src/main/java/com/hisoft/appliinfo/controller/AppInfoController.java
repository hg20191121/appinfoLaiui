package com.hisoft.appliinfo.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.hisoft.appliinfo.pojo.AppCategory;
import com.hisoft.appliinfo.pojo.AppInfo;
import com.hisoft.appliinfo.pojo.AppVersion;
import com.hisoft.appliinfo.pojo.DataDictionary;
import com.hisoft.appliinfo.service.appCategory.AppCategoryService;
import com.hisoft.appliinfo.service.appInfo.AppInfoService;
import com.hisoft.appliinfo.service.appVersion.AppVersionService;
import com.hisoft.appliinfo.service.dataDictionary.DataDictionaryService;
import com.hisoft.appliinfo.tools.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping(value = "/appInfoController")
public class AppInfoController {
    @Autowired
    private AppInfoService appInfoService;
    @Autowired
    private AppCategoryService appCategoryService;
    @Autowired
    private DataDictionaryService dataDictionaryService;
    @Autowired
    private AppVersionService appVersionService;
    @RequestMapping(value = "/order-list.html")
    public String queryAll(Model model) {
        List<AppInfo> appInfos = appInfoService.queryAll(null);
        List<AppCategory> appCategories = appCategoryService.queryAll();
        List<DataDictionary> app_status = dataDictionaryService.queryByTypeCode("APP_STATUS");
        List<DataDictionary> app_flatform = dataDictionaryService.queryByTypeCode("APP_FLATFORM");
        Integer count = appInfoService.getCount();

        model.addAttribute("appStatus", app_status);
        model.addAttribute("appFlatForms", app_flatform);
        model.addAttribute("appInfoList", appInfos);
        model.addAttribute("categoryList", appCategories);
        model.addAttribute("totalRecord", count);

        return "order-list";
    }

    @RequestMapping(value = "/order-list.page")
    @ResponseBody
    public String queryPage(Integer currNo) {
        List<AppInfo> appInfos = appInfoService.queryAll(currNo);
        return JSONArray.toJSONString(appInfos);
    }

    @RequestMapping(value = "/queryAppInfo.json")
    @ResponseBody
    public String queryAppInfo(@RequestParam Map<String, Object> formField) {
        //含分页信息
        List<AppInfo> appInfos = appInfoService.queryAllByMap(formField);
        return JSONArray.toJSONString(appInfos);
    }

    /**
     * 进入app信息查看页面
     *
     * @return
     */
    @RequestMapping(value = "/app-view.html/{id}")
    public String toOrderView(@PathVariable(value = "id") Integer id,
                              Model model) {
        AppInfo appInfo = appInfoService.queryById(id);
        List<AppVersion> appVersions = appVersionService.queryByAppId(id);
        model.addAttribute("appVersionList",appVersions);
        model.addAttribute("appInfo", appInfo);
        return "app-view";
    }

    @RequestMapping(value = "/getAppCountByMap.json")
    @ResponseBody
    public String getCountByMap(@RequestParam Map<String, Object> formField) {
        Integer countByMap = appInfoService.getCountByMap(formField);
        return JSON.toJSONString(countByMap);
    }

    /**
     * 跳转到appinfo修改界面
     */
    @RequestMapping(value = "/app-modify.html/{id}")
    public String toAppModify(Model model,
                              @PathVariable(value = "id") Integer id) {
        AppInfo appInfo = appInfoService.queryById(id);
        List<AppCategory> appCategories1 = appCategoryService.queryAll();
        List<AppCategory> appCategories2 = new ArrayList<>();
        List<AppCategory> appCategories3 = new ArrayList<>();
        for (AppCategory appCategory : appCategories1) {
            appCategories2.addAll(appCategory.getChildAppCategory());
        }
        for (AppCategory appCategory : appCategories2) {
            appCategories3.addAll(appCategory.getChildAppCategory());
        }
        List<DataDictionary> app_flatform = dataDictionaryService.queryByTypeCode("APP_FLATFORM");
        model.addAttribute("appFlatForms", app_flatform);
        model.addAttribute("appInfo", appInfo);
        model.addAttribute("categoryListFirst", appCategories1);
        model.addAttribute("categoryListSecond", appCategories2);
        model.addAttribute("categoryListThird", appCategories3);
        return "app-modify";
    }

    /**
     * 进行appinfo的修改
     */
    @RequestMapping(value = "/app-modify.do")
    @ResponseBody
    public String doAppModify(@RequestParam Map<String, Object> formField,
                              HttpSession session) {

        formField.put("modifyDate",new Date());
        formField.put("modifyBy", Integer.parseInt((String)session.getAttribute(Constants.USER_SESSION)));

        Integer integer = appInfoService.updateByMap(formField);
        Boolean key = false;
        if (integer == 1) {
            key = true;
        }
        HashMap<Object, Object> objectObjectHashMap = new HashMap<>();
        objectObjectHashMap.put("key", key);
        return JSONArray.toJSONString(objectObjectHashMap);
    }

}
