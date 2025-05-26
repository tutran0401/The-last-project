package com.javaweb.service;

import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import org.springframework.data.domain.Pageable;
import java.util.List;
import com.javaweb.model.response.BuildingSearchResponse;

public interface IBuildingService {
//    ResponseDTO listStaffs(Long buildingId);
    List<BuildingSearchResponse>findAll(BuildingSearchRequest buildingSearchRequest, Pageable pageable);
    ResponseDTO listStaffs(Long buildingId);


}
