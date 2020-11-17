<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%--    <meta charset="UTF-8"/>--%>
    <!--在手机网站，都需要加上视口约束！！！-->
    <%--    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no"/>--%>
    <!--以最新的内核渲染页面-->
    <%--    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>--%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <!--引入css文件-->
    <script src="${path}/style/js/jquery-3.3.1.min.js"></script>
    <script src="${path}/style/js/jquery.backstretch.min.js"></script>
    <script src="${path}/style/js/jquery.validate.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${path}/style/css/bootstrap.css"/>

    <script src="${path}/style/js/bootstrap.min.js"></script>
        <script src="${path}/pagination.js"></script>
        <script src="pagination.less"></script>
        <!--引如测试数据的js-->
        <script src="${path}/tt.js" type="text/javascript"></script>
        <script>

                var currPage = 1;
                var totalCount;
                var dataLIst = [];
                window.onload = function() {
                    /*取到总条数*/
                    /*每页显示多少条  10条*/
                    var limit = 10;
                    data(currPage, limit)
                    //console.log(totalCount)
                    createTable(1, limit, totalCount);
                    $('#callBackPager').extendPagination({
                        totalCount: totalCount,
                        limit: limit,
                        callback: function(curr, limit, totalCount) {
                            data(curr, limit)
                        }
                    });
                }

                /*创建的是一个表格，并将数据放进去*/
                function createTable(currPage, limit, total) {
                    var html = [],
                        showNum = limit;
                    if(total - (currPage * limit) < 0) showNum = total - ((currPage - 1) * limit);
                    html.push(' <table class="table table-striped table-bordered templatemo-user-table" style="margin-left: 0;">');
                    html.push(' <thead><tr><th>序号</th><th>项目名称</th><th>类别</th><th>发起人</th><th>单位</th><th>详情</th><th>操作</th></tr></thead><tbody>');

                    for(var i = 0; i < showNum; i++) {
                        html.push('<tr>');
                        html.push('<td>' + dataLIst[i].id + '</td>');
                        html.push('<td>' + dataLIst[i].pname + '</td>');
                        html.push('<td>' + dataLIst[i].ptypeName + '</td>');
                        html.push('<td>' + dataLIst[i].userName + '</td>');
                        html.push('<td>' + dataLIst[i].companyName + '</td>');
                        html.push('<td><a href="project_details_init.html?id='+dataLIst[i].id+'" class="templatemo-edit-btn">详情</a></td>');
                        html.push('<td><button class="templatemo-edit-btn" οnclick=checkproject(' + dataLIst[i].id + ',"1")>同意' +
                            '</button> <button class="templatemo-edit-btn" οnclick=checkproject(' + dataLIst[i].id + ',"2")>拒绝</button></td>');
                        html.push('</tr>');
                    }
                    html.push('</tbody></table>');
                    var mainObj = $('#mainContent');
                    mainObj.empty();
                    mainObj.html(html.join(''));
                }
                /*将数据取出来*/
                function data(curr, limit) {
                    //console.log("tot:"+totalCount)
                    /*拿到总数据*/
                    totalCount = testboke.data.total; //取出来的是数据总量
                    dataLIst = testboke.data.records; // 将数据放到一个数组里面（dataLIst 还未声明，莫着急）
                    createTable(curr, limit, totalCount);
                    console.log("tot:"+totalCount)
                }

        </script>
</head>
<body>

<div class="templatemo-content col-1 light-gray-bg">
    <div class="templatemo-top-nav-container">
        <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
                <li>
                    <a href="">发起项目列表管理</a>
                </li>
            </nav>
        </div>
    </div>
    <!--正文部分-->
    <div style="background: #E8E8E8;height: 60rem;">

        <div class="templatemo-content-container">
            <div class="templatemo-content-widget no-padding">
                <!--表头-->
                <div class="panel-heading templatemo-position-relative">
                    <h2 class="text-uppercase">发起项目列表</h2></div>
                <div class="panel panel-default table-responsive" id="mainContent">

                </div>
            </div>
        </div>
    </div>

    <div class="pagination-wrap" id="callBackPager">
    </div>
    <footer class="text-right">
        <p>Copyright &copy; 2018 Company Name | Designed by
            <a href="http://www.csdn.com" target="_parent">csdn</a>
        </p>
    </footer>

</body>
</html>