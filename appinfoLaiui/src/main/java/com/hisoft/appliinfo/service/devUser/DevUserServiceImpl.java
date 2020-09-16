package com.hisoft.appliinfo.service.devUser;

import com.hisoft.appliinfo.dao.dev_user.DevUserMapper;
import com.hisoft.appliinfo.pojo.DevUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DevUserServiceImpl implements DevUserService{
    @Autowired
    private DevUserMapper devUserMapper;
    @Override
    public DevUser login(String devCode, String devPassword) {
        DevUser login = devUserMapper.login(devCode, devPassword);
        return login;
    }
}
