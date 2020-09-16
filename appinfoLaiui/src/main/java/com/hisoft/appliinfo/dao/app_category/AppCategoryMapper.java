package com.hisoft.appliinfo.dao.app_category;

import com.hisoft.appliinfo.pojo.AppCategory;

import java.util.List;

public interface AppCategoryMapper {
    /**
     * 根据id 返回category种类
     * @param id
     * @return
     */
    public AppCategory queryById (Integer id);
    public String getNameById (Integer id);
    public List<AppCategory> queryAll();
    public List<AppCategory> queryByParentId(Integer id);
    public List<AppCategory> queryEnd(Integer id);
}
