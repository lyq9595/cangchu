package com.aaa.dispatch;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.DataSourceConfig;
import com.baomidou.mybatisplus.generator.config.GlobalConfig;
import com.baomidou.mybatisplus.generator.config.PackageConfig;
import com.baomidou.mybatisplus.generator.config.StrategyConfig;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;
import com.cyl.wms.pojo.vo.KContentListVo;
import org.junit.Test;

/**
 * @author
 */
public class test {

    @Test
    public void run() {

        KContentListVo kContentListVo = new KContentListVo();
        System.out.println(kContentListVo);
    }


}
