package com.hisoft.appliinfo.service.appCategory;

import com.hisoft.appliinfo.dao.app_category.AppCategoryMapper;
import com.hisoft.appliinfo.pojo.AppCategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AppCategoryServiceImpl implements AppCategoryService{
    @Autowired
    private AppCategoryMapper appCategoryMapper;
    List<AppCategory> appCategories = null;

    @Override
    public AppCategory queryById(Integer id) {
        return appCategoryMapper.queryById(id);
    }

    @Override
    public List<AppCategory> queryAll() {
        appCategories = appCategoryMapper.queryAll();
        return appCategories;
    }

    @Override
    public List<AppCategory> queryByParentId(Integer id) {
       appCategories = appCategoryMapper.queryByParentId(id);
        return appCategories;
    }

    @Override
    public List<AppCategory> queryEnd(Integer id) {
        appCategories = appCategoryMapper.queryEnd(id);
        return appCategories;
    }
}
