package com.javaweb.service.impl;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RoleEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {
    @Autowired
    private BuildingRepository buildingRepository;
    @Autowired
    private UserRepository userRepository;

    // function: a staff is assigned to manage buildings. show in client side
    @Override
    public ResponseDTO listStaffs(Long buildingId) {
        BuildingEntity buildingEntity = buildingRepository.findById(buildingId).get();
        List<UserEntity> staffUsers = userRepository.findByStatusAndRoleEntitiesCode(1, "STAFF");
        List<UserEntity> assignedStaffUsers = buildingEntity.getUserEntities();
        List<StaffResponseDTO> staffResponseDTOs = new ArrayList<>();
        for (UserEntity staffUser : staffUsers) {
            StaffResponseDTO staffResponseDTO = new StaffResponseDTO();
            staffResponseDTO.setStaffId(staffUser.getId());
            staffResponseDTO.setFullName(staffUser.getFullName());
            if (assignedStaffUsers.contains(staffUser.getId())) {
                staffResponseDTO.setChecked("checked");
            } else {
                staffResponseDTO.setChecked("");
            }
            staffResponseDTOs.add(staffResponseDTO);
        }
        ResponseDTO responseDTO = new ResponseDTO();
        responseDTO.setData(staffResponseDTOs);
        responseDTO.setMessage("Success");
        return responseDTO;
    }
}
