package com.javaweb.controller.admin;


import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value = "buildingControllerOfAdmin")
public class BuildingController {
    @GetMapping("/admin/building-list")
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/admin/building/list");
        modelAndView.addObject("buildingSearchRequest", buildingSearchRequest);

        List<BuildingSearchResponse> buildingSearchResponseList = new ArrayList<>();
        BuildingSearchResponse buildingSearchResponse = new BuildingSearchResponse();
        buildingSearchResponse.setId(10L);
        buildingSearchResponse.setName("<UNK>");
        buildingSearchResponse.setAddress("Le Quang Dao, My Dinh");
        buildingSearchResponse.setNumberOfBasement(2L);
        buildingSearchResponse.setManagerName("Anh A");
        buildingSearchResponse.setManagerPhone("019-599486-4");
        buildingSearchResponse.setFloorArea(100L);
        buildingSearchResponseList.add(buildingSearchResponse);
        modelAndView.addObject("buildingList", buildingSearchResponseList);
        return modelAndView;
    }

    @GetMapping("/admin/building-edit")
    public ModelAndView buildingEdit(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("/admin/building/edit");
        return modelAndView;
    }
}
