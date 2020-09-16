package com.hisoft.appliinfo.pojo;

import lombok.Data;

import java.util.Date;
@Data
public class BackendUser {
    private String id;
    private String userCode;
    private String userName;

    private Integer userType;
    private String typeName;//角色类型名字

    private Integer createdBy;
    private Date creationDate;
    private Integer modifyBy;
    private Date modifyDate;
    private String userPassword;
}
