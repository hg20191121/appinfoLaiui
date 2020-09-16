package com.hisoft.appliinfo.service.devUser;

import com.hisoft.appliinfo.pojo.DevUser;

public interface DevUserService {
    public DevUser login(String devCode,
                         String devPassword);
}
