package com.javaweb.api.admin;

import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPTOfAdmin")
//@RequestMapping("/api/building")
public class BuildingAPI {

    @Autowired
    private BuildingService buildingService;

    @PostMapping("/api/building")
    public BuildingDTO addBuilding(@RequestBody BuildingDTO buildingDTO) {
        // xuong db de update hoac them moi
        return buildingDTO;
    }

    @PutMapping("/api/building/{buildingId}")
    public BuildingDTO updateBuilding(@PathVariable Long buildingId, @RequestBody BuildingDTO buildingDTO) {
        // tim toa nha theo id roi sua lai toa nha
        return buildingDTO;
    }

    @DeleteMapping("/api/building/{buildingIds}")
    public void deleteBuildings(@PathVariable List<Long> buildingIds) {
        // xuong db de xoa danh sach building gui ve
        System.out.println("OK");
    }

    @GetMapping("/api/building/{id}/staffs")
    public ResponseDTO loadStaffs(@PathVariable("id") Long id) {
        ResponseDTO responseDTO = buildingService.listStaffs(id);
        return responseDTO;
    }
}
