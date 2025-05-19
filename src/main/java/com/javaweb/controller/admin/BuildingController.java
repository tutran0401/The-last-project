package com.javaweb.controller.admin;



import com.javaweb.enums.buildingType;
import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
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
    private IUserService userService;
    @RequestMapping(value = "/admin/builiding-list",method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/builiding/list");
        mav.addObject("modelSearch",buildingSearchRequest);
        //xuong db- lay data oke roi;
        List<BuildingSearchResponse> responsesList = new ArrayList<>();
        BuildingSearchResponse item1 = new BuildingSearchResponse();
        item1.setId(3L);
        item1.setName("Mỹ Đình towerr");
        item1.setAddress("Nhà 9c ngõ 392 mỹ đình 1");
        item1.setNumberOfBasement(2L);
        item1.setManagerName("Trần Anh Tú");
        item1.setManagerPhone("091234567");
        item1.setRentArea("100,200,300");
        BuildingSearchResponse item2 = new BuildingSearchResponse();
        item2.setId(3L);
        item2.setName("Mỹ Đình 2 towerr");
        item2.setAddress("Nhà 10c ngõ 392 mỹ đình 2");
        item2.setNumberOfBasement(3L);
        item2.setManagerName("Bùi Tùng Lâm");
        item2.setManagerPhone("0945678910");
        item2.setRentArea("200,300");
        responsesList.add(item1);
        responsesList.add(item2);
        mav.addObject("buildingList",responsesList);
        mav.addObject("listStaffs",userService.getStaffs());
        mav.addObject("districts", districtCode.type());
        mav.addObject("typeCodes", buildingType.type());
        return mav;
    }
    @RequestMapping(value = "/admin/building-edit",method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit") BuildingDTO buildingDTO,HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/builiding/edit");
        return mav;
    }
    @RequestMapping(value = "/admin/building-edit-{id}",method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") Long Id, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/builiding/edit");
        BuildingDTO buildingDTO = new BuildingDTO();
        buildingDTO.setName("TU building");
        mav.addObject("buildingEdit",buildingDTO);
        return mav;
    }

}
