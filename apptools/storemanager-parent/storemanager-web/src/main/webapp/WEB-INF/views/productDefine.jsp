<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/12
  Time: 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" ng-app="productDefine" >
<head>
    <title>Main</title>
    <%@ include file="/common/common.jsp"%>
    <link href="${rc.contextPath}/webresources/storemanager/css/test.css" rel="stylesheet" />
</head>

<body ng-controller="productCtrl">
<!--头框-->
<%@ include file="/common/header.jsp"%>
<!--主框架-->
<div class="main-container" id="main-container" >
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>
    <div class="main-container-inner">
        <a class="menu-toggler display" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>
        <!--左边栏-->
        <%@ include file="/common/leftside.jsp"%>

        <!--主内容-->
        <div class="main-content">
            <%@include file="/common/breadcrumb.jsp"%>



            <%@ include file="/common/settings.jsp"%>
        </div>

        <!--置顶-->
        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="icon-double-angle-up icon-only bigger-110"></i>
        </a>
    </div><!-- /.main-container -->
    <%@ include file="/common/foot.jsp"%>
    <script src="${rc.contextPath}/webresources/storemanager/js/productDefine.js"></script>
</body>
</html>
