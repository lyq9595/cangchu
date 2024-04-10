package com.cyl.wms.service;

public interface KDispatchService {
    void createRelationEmploy(Long aId, Long[] ids);

    void createRelationVehicle(Long aId, Long[] ids);

    int updateApplicationSubmit(Long applicationId);

    int rejectApplication(Long applicationId);
}
