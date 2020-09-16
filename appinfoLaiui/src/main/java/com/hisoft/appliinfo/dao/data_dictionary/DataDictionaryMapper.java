package com.hisoft.appliinfo.dao.data_dictionary;

import com.hisoft.appliinfo.pojo.DataDictionary;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DataDictionaryMapper {
    /**
     * 根据typeCode获得一个DataDictionary对象
     * @param typeCode
     * @return
     */
//    public DataDictionary queryByCode(@Param(value = "typeCode")String typeCode);

    /**
     * 根据valueId和typeCode获得一个DataDictionary对象
     * @param valueId
     * @return
     */
    public DataDictionary queryByValueId(@Param(value = "valueId")Integer valueId,
                                         @Param(value = "typeCode")String typeCode);

    public List<DataDictionary> queryByTypeCode(@Param(value = "typeCode")String typeCode);

    public String queryAppFlatformByValueId(Integer valueId);
    /*public DataDictionary queryAppFlatformByValueId(@Param(value = "valueId")Integer valueId,
                                                    @Param(value = "typeCode")String typeCode);*/
    public String queryAppStatusByValueId(Integer valueId);

    public String queryPublicByValueId(Integer valueId);
}
