package com.fenye.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class People extends Page{
    private String id;

    private String empname;

    private Double salary;

    private Integer age;

    private String deptname;
}
