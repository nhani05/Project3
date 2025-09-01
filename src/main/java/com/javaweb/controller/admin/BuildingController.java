package com.javaweb.controller.admin;


import com.javaweb.enums.BuildingType;
import com.javaweb.enums.DistrictCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value = "buildingControllerOfAdmin")
public class BuildingController {
    @Autowired
    private IUserService userService;

    @GetMapping("/admin/building-list")
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/admin/building/list");
        modelAndView.addObject("buildingSearchRequest", buildingSearchRequest);

        List<BuildingSearchResponse> buildingSearchResponseList = new ArrayList<>();
        BuildingSearchResponse buildingSearchResponse = new BuildingSearchResponse();
        buildingSearchResponse.setId(10L);
        buildingSearchResponse.setBuildingName("ABC building");
        buildingSearchResponse.setAddress("Le Quang Dao, My Dinh");
        buildingSearchResponse.setNumberOfBasement(2L);
        buildingSearchResponse.setManagerName("Anh A");
        buildingSearchResponse.setManagerPhone("019-599486-4");
        buildingSearchResponse.setFloorArea(100L);
        buildingSearchResponseList.add(buildingSearchResponse);
        modelAndView.addObject("buildingList", buildingSearchResponseList);

        modelAndView.addObject("staffs", userService.getStaffṣ̣());
        modelAndView.addObject("districts", DistrictCode.getDistrictType());
        modelAndView.addObject("buildingTypeCodes", BuildingType.getBuildingType());
        return modelAndView;
    }

    @GetMapping("/admin/building-edit")
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit") BuildingDTO buildingDTO, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/admin/building/edit");
        modelAndView.addObject("districts", DistrictCode.getDistrictType());
        modelAndView.addObject("buildingTypeCodes", BuildingType.getBuildingType());
        return modelAndView;
    }

    @GetMapping("/admin/building-edit-{id}")
    public ModelAndView buildingEdit(@PathVariable("id") Long id, @ModelAttribute("buildingEdit") BuildingDTO buildingDTO, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/admin/building/edit");
        // xuong db tim theo id
//        BuildingDTO buildingDTO = new BuildingDTO();
        modelAndView.addObject("districts", DistrictCode.getDistrictType());
        modelAndView.addObject("buildingTypeCodes", BuildingType.getBuildingType());
        return modelAndView;
    }
}
