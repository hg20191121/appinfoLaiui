package com.hisoft.appliinfo.service.dataDictionary;

import com.hisoft.appliinfo.pojo.DataDictionary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DataDictionaryService {
    public DataDictionary queryByValueId(Integer valueId,
                                         String typeCode);

    public List<DataDictionary> queryByTypeCode(String typeCode);
}
