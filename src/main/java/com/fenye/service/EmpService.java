package com.fenye.service;

import com.fenye.entity.Emp;
import com.fenye.util.People;

import java.util.List;

/**
 * (Emp)表服务接口
 *
 * @author makejava
 * @since 2020-11-17 13:12:46
 */
public interface EmpService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Emp queryById(String id);
    List<People> queryAll(People people);
    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Emp> queryAllByLimit(int offset, int limit);

    int getTotal();
    /**
     * 新增数据
     *
     * @param emp 实例对象
     * @return 实例对象
     */
    Emp insert(Emp emp);

    /**
     * 修改数据
     *
     * @param emp 实例对象
     * @return 实例对象
     */
    Emp update(Emp emp);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(String id);

}