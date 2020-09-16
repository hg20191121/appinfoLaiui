package com.hisoft.appliinfo.dao.app_info;

import com.hisoft.appliinfo.pojo.AppInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface AppInfoMapper {
    /**
     * 获得所有的App信息
     * 其中绑定三级菜单的具体名字
     * 再次绑定版本号
     * 最后绑定
     * @return
     */
    public List<AppInfo> queryAll(Integer currNo);

    public Integer getCount();

    public Integer getCountByMap(Map<String,Object> infoMap);

    public List<AppInfo> queryAllByMap(Map<String,Object> infoMap);

    public String versionName(Integer id);
}
