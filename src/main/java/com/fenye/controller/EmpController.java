package com.fenye.controller;

import com.fenye.entity.Emp;
import com.fenye.service.EmpService;
import com.fenye.util.People;
import com.fenye.util.ReturnData;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Emp)表控制层
 *
 * @author makejava
 * @since 2020-11-17 13:12:49
 */
@RestController
@RequestMapping("emp")
public class EmpController {
    /**
     * 服务对象
     */
    @Resource
    private EmpService empService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Emp selectOne(String id) {
        return this.empService.queryById(id);
    }

    @RequestMapping("queryall")
    public ReturnData<People> getAll(People people){
        ReturnData<People> peopleData = new ReturnData<People>();
        //得到总页数
        int totle = empService.getTotal();
        peopleData.setTotal(totle);
        //得到user数据对象
        List<People> plist = empService.queryAll(people);
        peopleData.setRows(plist);
        return  peopleData;
    }
}