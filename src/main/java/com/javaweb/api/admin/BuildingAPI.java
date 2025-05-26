package com.javaweb.api.admin;

import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.IBuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPIOfADmin")
@RequestMapping("/api/building")
public class BuildingAPI {
    @Autowired
    private IBuildingService buildingService;
    @PostMapping
    public BuildingDTO AddOrUpdateBuiliding(@RequestBody BuildingDTO buildingDTO){
    // xuong DB de them moi hoac update
        return buildingDTO;
    }
    @DeleteMapping("/{ids}")
    public void deleteBuilding(@RequestBody List<Long> ids){
        // xuong db de xoa building  theo danh sach gui ve
        System.out.println("ple");
    }
    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaffs(@PathVariable Long id){
        ResponseDTO result = new ResponseDTO();
        result=buildingService.listStaffs(id);
        return result;
    }
    @PostMapping("/assigment")
    public void updateAssigmentBuilding(@RequestBody AssignmentBuildingDTO assignmentBuildingDTO){
        System.out.println("oke");

    }
}
