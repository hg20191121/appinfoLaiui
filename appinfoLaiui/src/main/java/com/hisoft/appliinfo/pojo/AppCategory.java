package com.hisoft.appliinfo.pojo;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class AppCategory {
    private Integer id;
    private String categoryCode;
    private String categoryName;
    private Integer parentId;
    private Integer createdBy;
    private Date creationTime;
    private Integer modifyBy;
    private Date modifyDate;
    //当前分类下的
//    private List<AppCategory> appCategories;
    //当前分类下的所有子集分类
    private List<AppCategory> childAppCategory;

}
