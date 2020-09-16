package com.hisoft.appliinfo.pojo;

import lombok.Data;

import java.util.Date;
@Data
public class AppVersion {
    private String softwareName;
    private Integer id;
    private Integer appId;
    private String versionNo;
    private String versionInfo;
    //发布状态
    private Integer publishStatus;
    private String publishStatusName;

    private String downloadLink;
    private Integer versionSize;
    private Integer createdBy;
    private Date creationDate;
    private Integer modifyBy;
    private Date modifyDate;
    private String apkLocPath;
    private String apkFileName;

}
