package com.fenye.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Page {
    private int pageNumber; //每页的条数
    private int offset; //数据库查询索引
}
