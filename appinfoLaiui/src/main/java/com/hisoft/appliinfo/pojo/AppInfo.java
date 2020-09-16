package com.hisoft.appliinfo.pojo;

import lombok.Data;

import java.util.Date;

@Data
public class AppInfo {
    private Integer id;
    private String softwareName;
    private String APKName;
    private String supportROM;
    private String interfaceLanguage;
    private Integer softwareSize;
    private Date updateDate;
    private Integer devId;
    private String appInfo;
    //上架状态
    private Integer status;
    private String statusName;

    private Date onSaleDate;
    private Date offSaleDate;

    //平台
    private Integer flatformId;
    private String flatformName;

    private Integer downloads;
    private Integer createdBy;
    private Date creationDate;
    private Integer modifyBy;
    private Date modifyDate;

    //三级分类
    private Integer categoryLevel1;
    private String categoryLevel1Name;
    private Integer categoryLevel2;
    private String categoryLevel2Name;
    private Integer categoryLevel3;
    private String categoryLevel3Name;

//  private List<AppCategory> categoryList;

    private String logoPicPath;
    private String logoLocPath;
    //版本
    private Integer versionId;
    private String versionName;

}
