package com.fenye.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (Emp)实体类
 *
 * @author makejava
 * @since 2020-11-17 13:12:42
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Emp implements Serializable {
    private static final long serialVersionUID = -84283382962334435L;

    private String id;

    private String empname;

    private Double salary;

    private Integer age;

    private String deptname;

}