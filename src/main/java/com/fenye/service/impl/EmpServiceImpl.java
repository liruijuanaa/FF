package com.fenye.service.impl;

import com.fenye.dao.EmpDao;
import com.fenye.entity.Emp;
import com.fenye.service.EmpService;
import com.fenye.util.People;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Emp)表服务实现类
 *
 * @author makejava
 * @since 2020-11-17 13:12:47
 */
@Service("empService")
public class EmpServiceImpl implements EmpService {
    @Resource
    private EmpDao empDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Emp queryById(String id) {
        return this.empDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Emp> queryAllByLimit(int offset, int limit) {
        return this.empDao.queryAllByLimit(offset, limit);
    }

    @Override
    public int getTotal() {
        return this.empDao.getTotal();
    }

    /**
     * 新增数据
     *
     * @param emp 实例对象
     * @return 实例对象
     */
    @Override
    public Emp insert(Emp emp) {
        this.empDao.insert(emp);
        return emp;
    }

    /**
     * 修改数据
     *
     * @param emp 实例对象
     * @return 实例对象
     */
    @Override
    public Emp update(Emp emp) {
        this.empDao.update(emp);
        return this.queryById(emp.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String id) {
        return this.empDao.deleteById(id) > 0;
    }

    @Override
    public List<People> queryAll(People people) {
        return this.empDao.queryAll(people);
    }
}