package com.cyl.wms.service.impl;

import com.cyl.wms.domain.KApplicationCar;
import com.cyl.wms.domain.KApplicationEmploy;
import com.cyl.wms.mapper.KApplicationCarMapper;
import com.cyl.wms.mapper.KApplicationEmployMapper;
import com.cyl.wms.mapper.KApplicationMapper;
import com.cyl.wms.service.KDispatchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @description:
 * @author: li ying qi
 **/
@Service
public class KDispatchServiceImpl implements KDispatchService {

    @Autowired
    private KApplicationEmployMapper applicationEmployMapper;

    @Autowired
    private KApplicationCarMapper applicationCarMapper;

    @Autowired
    private KApplicationMapper applicationMapper;


    @Override
    public void createRelationEmploy(Long aId, Long[] ids) {
        for (Long employId : ids) {
            KApplicationEmploy applicationEmploy=new KApplicationEmploy();
            applicationEmploy.setApplicationId(aId);
            applicationEmploy.setEmployId(employId);
            applicationEmployMapper.insert(applicationEmploy);
        }
    }

    @Override
    public void createRelationVehicle(Long aId, Long[] ids) {
        for (Long carId : ids) {
            KApplicationCar applicationCar=new KApplicationCar();
            applicationCar.setApplicationId(aId);
            applicationCar.setCarId(carId);
            applicationCarMapper.insert(applicationCar);
        }
    }

    @Override
    public int updateApplicationSubmit(Long applicationId) {
        return applicationMapper.updateSubmit(applicationId);
    }

    @Override
    public int rejectApplication(Long applicationId) {
        return applicationMapper.rejectApplication(applicationId);
    }
}
