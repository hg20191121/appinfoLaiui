package com.hisoft.appliinfo.pojo;

import lombok.Data;

import java.util.Date;
@Data
public class AppVersion {
    private Integer id;
    private Integer appId;
    private String versionNo;
    private String versionInfo;
    private Integer publishStatus;
    private String downloadLink;
    private Integer versionSize;
    private Integer createdBy;
    private Date creationDate;
    private Integer modifyBy;
    private Date modifyDate;
    private String apkLocPath;
    private String apkFileName;

}
