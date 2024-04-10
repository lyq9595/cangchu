package com.cyl.wms.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cyl.wms.commonutils.Result;
import com.cyl.wms.domain.KEmploy;
import com.cyl.wms.pojo.vo.KEmployVo;

import java.util.Date;
import java.util.List;

/**
 * <p>
 * 讲师 服务类
 * </p>
 *
 * @author lyq
 * @since 2023-02-01
 */
public interface KEmployService extends IService<KEmploy> {


    Result getEmployByCompanyId(long id, Date startTime, Date endTime) throws Exception;

    List<KEmploy> getListByEmployIds(Long[] ids);

    Result getEByeId(long id);
}
