package com.javaweb.api.admin;

import com.javaweb.model.dto.BuildingDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPIOfADmin")
@RequestMapping("/api/building")
public class BuildingAPI {
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
}
