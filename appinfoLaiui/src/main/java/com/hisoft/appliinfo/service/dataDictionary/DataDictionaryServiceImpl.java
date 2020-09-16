package com.hisoft.appliinfo.service.dataDictionary;

import com.hisoft.appliinfo.dao.data_dictionary.DataDictionaryMapper;
import com.hisoft.appliinfo.pojo.DataDictionary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class DataDictionaryServiceImpl implements DataDictionaryService {
    DataDictionary dataDictionary = null;
    List<DataDictionary> dataDictionaries = null;
    @Autowired
    private DataDictionaryMapper dataDictionaryMapper;

    @Override
    public DataDictionary queryByValueId(Integer valueId, String typeCode) {
        dataDictionary = dataDictionaryMapper.queryByValueId(valueId, typeCode);
        return dataDictionary;
    }

    @Override
    public List<DataDictionary> queryByTypeCode(String typeCode) {
        dataDictionaries = dataDictionaryMapper.queryByTypeCode(typeCode);
        return dataDictionaries;
    }

}
