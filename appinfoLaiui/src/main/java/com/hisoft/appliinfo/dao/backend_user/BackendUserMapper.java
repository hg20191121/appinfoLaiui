package com.hisoft.appliinfo.dao.backend_user;

import com.hisoft.appliinfo.pojo.BackendUser;
import org.apache.ibatis.annotations.Param;

public interface BackendUserMapper {
    /**
     * 登录验证根据backendUser的账户和密码进行验证
     * @param backendCode
     * @param backendPassword
     * @return
     */
    public BackendUser login(@Param(value = "backendCode") String backendCode,
                             @Param(value = "backendPassword") String backendPassword);
}
