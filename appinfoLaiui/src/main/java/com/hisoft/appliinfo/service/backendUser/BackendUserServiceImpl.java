package com.hisoft.appliinfo.service.backendUser;

import com.hisoft.appliinfo.dao.backend_user.BackendUserMapper;
import com.hisoft.appliinfo.dao.data_dictionary.DataDictionaryMapper;
import com.hisoft.appliinfo.pojo.BackendUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BackendUserServiceImpl implements BackendUserService{
    @Autowired
    private BackendUserMapper backendUserMapper;
    @Autowired
    private DataDictionaryMapper dataDictionaryMapper;
    @Override
    public BackendUser login(String backendCode, String backendPassword) {
        BackendUser login = backendUserMapper.login(backendCode, backendPassword);
        login.setTypeName(dataDictionaryMapper.queryByValueId(login.getUserType(),"USER_TYPE").getTypeName());
        //查出来用户并且绑定上typeName
        return login;
    }
}
