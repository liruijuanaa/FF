package com.fenye;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.fenye.dao")
public class FenApplication {

    public static void main(String[] args) {
        SpringApplication.run(FenApplication.class, args);
    }

}
