package com.fenye;

import com.fenye.entity.Emp;
import com.fenye.service.EmpService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class FenApplicationTests {

    @Autowired
    private EmpService empService;

    @Test
    void contextLoads() {
//        List<Emp> emps = empService.queryAllByLimit();
//        for (Emp emp : emps) {
//            System.out.println(emp);
//        }
    }

}
