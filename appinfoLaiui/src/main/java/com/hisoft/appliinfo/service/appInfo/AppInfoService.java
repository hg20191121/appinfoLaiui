package com.hisoft.appliinfo.service.appInfo;

import com.hisoft.appliinfo.pojo.AppInfo;

import java.util.List;
import java.util.Map;

public interface AppInfoService {
    public List<AppInfo> queryAll(Integer currNo);
    public Integer getCount();

    public List<AppInfo> queryAllByMap(Map<String,Object> infoMap);

    public Integer getCountByMap(Map<String,Object> infoMap);
}
