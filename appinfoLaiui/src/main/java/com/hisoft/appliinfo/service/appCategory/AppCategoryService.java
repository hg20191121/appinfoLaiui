package com.hisoft.appliinfo.service.appCategory;

import com.hisoft.appliinfo.pojo.AppCategory;

import java.util.List;

public interface AppCategoryService {
    public AppCategory queryById (Integer id);
    public List<AppCategory> queryAll();

    public List<AppCategory> queryByParentId(Integer id);
    public List<AppCategory> queryEnd(Integer id);
}
