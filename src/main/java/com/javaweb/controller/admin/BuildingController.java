package com.javaweb.controller.admin;



import com.javaweb.enums.buildingType;
import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IBuildingService;
import com.javaweb.service.IUserService;
import com.javaweb.utils.DisplayTagUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {
    @Autowired
    private IBuildingService buildingService;
    @Autowired
    private IUserService userService;
    @RequestMapping(value = "/admin/building-list",method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("listStaffs", userService.getStaffs());
        mav.addObject("districts", districtCode.type());
        mav.addObject("typeCodes", buildingType.type());
        mav.addObject("modelSearch", buildingSearchRequest);
        mav.addObject("buildingList", buildingService.findAll(buildingSearchRequest, PageRequest.of(buildingSearchRequest.getPage() - 1, buildingSearchRequest.getMaxPageItems())));
        BuildingSearchResponse model = new BuildingSearchResponse();
        DisplayTagUtils.of(request, model);
        List<BuildingSearchResponse> res = buildingService.findAll(buildingSearchRequest, PageRequest.of(buildingSearchRequest.getPage() - 1, buildingSearchRequest.getMaxPageItems()));
        model.setListResult(res);
        model.setTotalItems(buildingService.countTotalItem(res));
        mav.addObject("buildingList", model);
        return mav;
    }

    @RequestMapping(value = "/admin/building-edit",method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit") BuildingDTO buildingDTO,HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        mav.addObject("districts", districtCode.type());
        mav.addObject("typeCodes", buildingType.type());
        return mav;
    }
    @RequestMapping(value = "/admin/building-edit-{id}",method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") Long Id, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/builiding/edit");
        BuildingDTO buildingDTO = new BuildingDTO();
        buildingDTO.setName("TU building");
        mav.addObject("buildingEdit",buildingDTO);
        mav.addObject("districts", districtCode.type());
        mav.addObject("typeCodes", buildingType.type());
        return mav;
    }

}
