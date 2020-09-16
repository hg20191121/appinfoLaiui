package com.hisoft.appliinfo.service.backendUser;

import com.hisoft.appliinfo.pojo.BackendUser;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


public interface BackendUserService {
    public BackendUser login(String backendCode,
                            String backendPassword);
}
