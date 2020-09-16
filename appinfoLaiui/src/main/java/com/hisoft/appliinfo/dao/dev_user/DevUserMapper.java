package com.hisoft.appliinfo.dao.dev_user;

import com.hisoft.appliinfo.pojo.DevUser;
import org.apache.ibatis.annotations.Param;

public interface DevUserMapper {
    /**
     * 登录验证根据dev的账号和密码进行验证
     * @param devCode
     * @param devPassword
     * @return
     */
    public DevUser login(@Param(value = "devCode") String devCode,
                         @Param(value = "devPassword") String devPassword);
}
