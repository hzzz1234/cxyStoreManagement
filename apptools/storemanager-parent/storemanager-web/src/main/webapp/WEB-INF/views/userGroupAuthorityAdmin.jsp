<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/12
  Time: 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" ng-app="main" >
<head>
  <title>权限管理</title>
  <%@ include file="/common/common.jsp"%>
  <link href="${rc.contextPath}/webresources/storemanager/css/test.css" rel="stylesheet" />
</head>

<body ng-controller="mainCtl">
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

      <div class="page-content">
        <!-- #section:settings.box -->
        <div class="col-xs-6">
          <div class="page-header">
            <h1>
              用户管理
              <small>
                <i class="icon-double-angle-right"></i>
                用户相关操作
              </small>
            </h1>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <!-- PAGE CONTENT BEGINS -->
              <div class="row">
                <div class="col-xs-12">
                  <div class="table-header" align="center">
                    用户权限列表
                  </div>
                  <div>
                    <div id="sample-table-1_wrapper" class="dataTables_wrapper form-inline" role="grid">
                      <div class="row">
                        <div class="col-xs-6">
                          <div id="sample-table-1_length" class="dataTables_length">
                            <label>显示:
                              <select size="1" name="sample-table-2_length" aria-controls="sample-table-2">
                                <option value="10" selected="selected">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                              </select> 记录
                            </label>
                          </div>
                        </div>
                        <div class="col-xs-6">
                          <div class="dataTables_filter" id="sample-table-1_filter">
                            <label>搜索: <input type="text" aria-controls="sample-table-1"></label>
                          </div>
                        </div>
                      </div>
                      <table id="sample-table-1" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info">
                        <thead>
                        <tr role="row">
                          <th class="center sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="" style="width: 97px;">
                            <label>
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </th>
                          <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" style="width: 259px;" aria-sort="ascending" aria-label="Domain: activate to sort column descending">用户名</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending" style="width: 177px;">权限列表</th>
                        </tr>
                        </thead>
                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">app.com</a>
                          </td>
                          <td class=" ">
                            <button style="float:right" class="btn btn-link" data-toggle="modal" data-target="#addAuth"><i class="icon-plus-sign" style="color: green;font-size: 20px;"></i></button>
                          </td>



                        </tr>
                        <tr class="even">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">base.com</a>
                          </td>
                          <td class=" ">
                            <button style="float:right" class="btn btn-link" data-toggle="modal" data-target="#addAuth"><i class="icon-plus-sign" style="color: green;font-size: 20px;"></i></button>
                          </td>
                        </tr>
                        </tbody>
                      </table>
                      <div class="row">
                        <div class="col-xs-6">
                          <div class="dataTables_info" id="sample-table-1_info">显示 1 到 10  记录</div>
                        </div>
                        <div class="col-xs-6">
                          <div class="dataTables_paginate paging_bootstrap">
                            <ul class="pagination">
                              <li class="prev disabled">
                                <a href="#"><i class=" icon-fast-backward" style="font-size: 18px"></i></a>
                              </li>
                              <li class="prev disabled">
                                <a href="#"><i class="icon-backward" style="font-size: 18px"></i></a>
                              </li>
                              <li class="active"><a href="#">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li class="next">
                                <a href="#"><i class="icon-forward" style="font-size: 18px"></i></a>
                              </li>
                              <li class="next">
                                <a href="#">
                                  <i class="icon-fast-forward" style="font-size: 18px"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            </div><!-- /.col -->
          </div><!-- /.row -->
        </div>
        <div class="col-xs-6">
          <div class="page-header">
            <h1>
              用户权限管理
              <small>
                <i class="icon-double-angle-right"></i>
                用户组相关操作
              </small>
            </h1>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <!-- PAGE CONTENT BEGINS -->
              <div class="row">
                <div class="col-xs-12">
                  <div class="table-header" align="center">
                    用户组权限列表
                  </div>
                  <div>
                    <div id="sample-table-2_wrapper" class="dataTables_wrapper form-inline" role="grid">
                      <div class="row">
                        <div class="col-xs-6">
                          <div id="sample-table-2_length" class="dataTables_length">
                            <label>显示:
                              <select size="1" name="sample-table-2_length" aria-controls="sample-table-2">
                                <option value="10" selected="selected">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                              </select> 记录
                            </label>
                          </div>
                        </div>
                        <div class="col-xs-6">
                          <div class="dataTables_filter" id="sample-table-2_filter">
                            <label>搜索: <input type="text" aria-controls="sample-table-2"></label>
                          </div>
                        </div>
                      </div>
                      <table id="sample-table-2" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info">
                        <thead style="overflow: scroll">
                        <tr role="row">
                          <th class="center sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </th>
                          <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" style="width: 259px;" aria-sort="ascending" aria-label="Domain: activate to sort column descending">用户组名</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending" style="width: 177px;">权限列表</th>
                        </tr>
                        </thead>
                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">app.com</a>
                          </td>
                          <td class=" ">
                            <button style="float:right" class="btn btn-link" data-toggle="modal" data-target="#addAuth"><i class="icon-plus-sign" style="color: green;font-size: 20px;"></i></button>
                          </td>
                        </tr>
                        <tr class="even">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">base.com</a>
                          </td>
                          <td class=" ">
                            <button style="float:right" class="btn btn-link" data-toggle="modal" data-target="#addAuth"><i class="icon-plus-sign" style="color: green;font-size: 20px;"></i></button>
                          </td>
                        </tr>
                        </tbody>
                      </table>
                      <div class="row">
                        <div class="col-xs-6">
                          <div class="dataTables_info" id="sample-table-2_info">显示 1 到 10  记录</div>
                        </div>
                        <div class="col-xs-6">
                          <div class="dataTables_paginate paging_bootstrap">
                            <ul class="pagination">
                              <li class="prev disabled">
                                <a href="#"><i class=" icon-fast-backward" style="font-size: 18px"></i></a>
                              </li>
                              <li class="prev disabled">
                                <a href="#"><i class="icon-backward" style="font-size: 18px"></i></a>
                              </li>
                              <li class="active"><a href="#">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li class="next">
                                <a href="#"><i class="icon-forward" style="font-size: 18px"></i></a>
                              </li>
                              <li class="next">
                                <a href="#">
                                  <i class="icon-fast-forward" style="font-size: 18px"></i>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            </div><!-- /.col -->
          </div><!-- /.row -->
        </div>
      </div>
      <!-- 模态框（Modal） -->
      <div class="modal fade" id="addAuth" tabindex="-1" role="dialog"
           aria-labelledby="addAuthLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close"
                      data-dismiss="modal" aria-hidden="true">
                &times;
              </button>
              <h4 class="modal-title" id="addAuthLabel">
                xxx用户/用户组权限添加
              </h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" role="form">
                <div class="form-group">
                  <label class="col-sm-3 control-label no-padding-right" for="authName">权限名</label>

                  <div class="col-sm-9">
                    <input type="text" id="authName" placeholder="权限名" class="col-xs-10 col-sm-5" required ng-maxlength="20" ng-model="user.username">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label no-padding-right" for="authList">权限列表</label>

                  <div class="col-sm-9">
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default"
                      data-dismiss="modal">关闭
              </button>
              <button type="button" class="btn btn-primary">
                添加
              </button>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal -->
      </div>
    </div>

      <%@ include file="/common/settings.jsp"%>
    </div>

    <!--置顶-->
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
      <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>
  </div><!-- /.main-container -->
  <%@ include file="/common/foot.jsp"%>
  <script src="${rc.contextPath}/webresources/storemanager/js/main.js"></script>
</body>
</html>
