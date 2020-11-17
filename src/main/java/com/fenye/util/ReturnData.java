package com.fenye.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReturnData <T>{
    //数据集合
    private List<T> rows = new ArrayList<T>();
    //数据总条数
    private int total;
}
