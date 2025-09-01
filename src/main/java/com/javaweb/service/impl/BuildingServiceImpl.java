package com.javaweb.service.impl;

import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuildingServiceImpl implements BuildingService {
//    @Autowired
//    //private Re

    @Override
    public ResponseDTO listStaffs(Long id) {
        ResponseDTO responseDTO = new ResponseDTO();
        return responseDTO;
    }
}
