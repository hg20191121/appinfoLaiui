package com.hisoft.appliinfo.service.appInfo;

import com.hisoft.appliinfo.dao.app_info.AppInfoMapper;
import com.hisoft.appliinfo.dao.data_dictionary.DataDictionaryMapper;
import com.hisoft.appliinfo.pojo.AppInfo;
import com.hisoft.appliinfo.pojo.DataDictionary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Set;

@Service
@Transactional
public class AppInfoServiceImpl implements AppInfoService{
    List<AppInfo> appInfos = null;
    @Autowired
    private AppInfoMapper appInfoMapper;
    @Autowired
    private DataDictionaryMapper dataDictionaryMapper;
    @Override
    public List<AppInfo> queryAll(Integer currNo) {
        if(currNo == null){
            currNo = 0;
        }else{
            currNo =   (currNo-1)*5;
        }
        appInfos = appInfoMapper.queryAll(currNo);
        return appInfos;
    }

    @Override
    public Integer getCount() {
        return appInfoMapper.getCount();
    }

    @Override
    public List<AppInfo> queryAllByMap(Map<String, Object> infoMap) {
        if(infoMap.get("currNo")==null){
            infoMap.put("currNo",0);
        }else{
            infoMap.replace("currNo",((Integer.parseInt((String)infoMap.get("currNo"))-1)*5));
        }
        appInfos =  appInfoMapper.queryAllByMap(infoMap);
        return appInfos;
    }

    @Override
    public Integer getCountByMap(Map<String, Object> infoMap) {
        return appInfoMapper.getCountByMap(infoMap);
    }

}
