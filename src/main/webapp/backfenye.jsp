<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录</title>
        <!--引入css文件-->
        <script src="${path}/style/js/jquery-3.3.1.min.js"></script>
        <script src="${path}/style/js/jquery.backstretch.min.js"></script>
        <script src="${path}/style/js/jquery.validate.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${path}/style/css/bootstrap.css"/>

        <script src="${path}/style/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.18.0/dist/bootstrap-table.min.css">
        <script src="https://unpkg.com/bootstrap-table@1.18.0/dist/bootstrap-table.min.js"></script>
    <script>

        $(document).ready(function () {
            $("#mytable").bootstrapTable({
                url:"${path}/emp/queryall",   //请求地址
                striped : true, //是否显示行间隔色
                pageNumber : 1, //初始化加载第一页
                pagination : true,//是否分页
                sidePagination : 'server',//server:服务器端分页|client：前端分页
                pageSize : 2,//单页记录数
                pageList : [ 2, 4, 6],//可选择单页记录数
                showRefresh : true,//刷新按钮
                queryParams : function(params) {//上传服务器的参数
                    var temp = {
                        offset :params.offset + 0,// SQL语句起始索引
                        pageNumber : params.limit  // 每页显示数量
                    };
                    return temp;
                },
                columns : [ {
                    title : 'id',
                    field : 'id',
                    sortable : true
                }, {
                    title : '姓名',
                    field : 'empname',
                    sortable : true
                }, {
                    title : '工资',
                    field : 'salary',
                    sortable : true
                }, {
                    title : '年龄',
                    field : 'age',
                    sortable : true
                }, {
                    title : '部门',
                    field : 'deptname',
                    sortable : true
                }]
            })
        })
    </script>
</head>
<body>
<table id="mytable"></table>
</body>
</html>