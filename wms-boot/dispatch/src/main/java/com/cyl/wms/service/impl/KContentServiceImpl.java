package com.cyl.wms.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.*;
import com.cyl.wms.mapper.*;
import com.cyl.wms.service.KContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @description:
 * @author: li ying qi
 **/
@Service
public class KContentServiceImpl extends ServiceImpl<KContentMapper, KContent> implements KContentService {

    @Autowired
    private  KContentMapper contentMapper;

    @Autowired
    private KEmployMapper employMapper;

    @Autowired
    private KCarMapper carMapper;

    @Autowired
    private KApplicationEmployMapper applicationEmployMapper;

    @Autowired
    private KApplicationCarMapper applicationCarMapper;

    @Autowired
    kContentEmployMapper contentEmployMapper;

    @Autowired
    kContentCarMapper contentCarMapper;


    @Override
    public Result getEmployAndCarListByAid(Long applicationId) {
        List<KEmploy> employList=null;
        List<KCar> carList=null;
        List<Long> employIds=applicationEmployMapper.getEmployIds(applicationId);
        if(employIds.size()!=0){
            employList= employMapper.selectBatchIds(employIds);
        }

        List<Long> carIds=applicationCarMapper.getCarIds(applicationId);
        if(carIds.size()!=0){
            carList= carMapper.selectBatchIds(carIds);
        }
        return Result.ok().data("employList",employList).data("carList",carList);
    }

    @Override
    public Long addContent(String contentSpecification, Integer contentWeight, Integer contentNum, String employText, String carText, Long applicationId) {
        KContent content = new KContent();
        content.setContentAid(applicationId);
        content.setContentSpecifications(contentSpecification);
        content.setContentWeight(contentWeight);
        content.setContentNum(contentNum);
        content.setEmployText(employText);
        content.setCarText(carText);
        contentMapper.insert(content);
        return content.getContentId();
    }

    @Override
    public void addContentAndEmploy(Long contentId, Long eId) {
        KContentEmploy contentEmploy = new KContentEmploy();
        contentEmploy.setContentId(contentId);
        contentEmploy.setEmployId(eId);
        contentEmployMapper.insert(contentEmploy);
    }

    @Override
    public void addContentAndCar(Long contentId, Long cId) {
        KContentCar contentCar = new KContentCar();
        contentCar.setContentId(contentId);
        contentCar.setCarId(cId);
        contentCarMapper.insert(contentCar);
    }

    @Override
    public List<KContent> getConfirmInfo(Long applicationId) {
        QueryWrapper<KContent> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("content_aid",applicationId);
        return contentMapper.selectList(queryWrapper);
    }

    @Override
    public Result getHistoryEmployAndCarListByAid(Long applicationId) {
        List<KEmploy> employList=null;
        List<KCar> carList=null;
        List<Long> employIds=applicationEmployMapper.getHistoryEmployIds(applicationId);
        if(employIds.size()!=0){
            employList= employMapper.selectBatchIds(employIds);
        }

        List<Long> carIds=applicationCarMapper.getHistoryCarIds(applicationId);
        if(carIds.size()!=0){
            carList= carMapper.selectBatchIds(carIds);
        }
        return Result.ok().data("employList",employList).data("carList",carList);
    }
}
