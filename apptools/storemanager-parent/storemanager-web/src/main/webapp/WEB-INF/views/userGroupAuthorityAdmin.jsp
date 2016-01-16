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
              采购列表
              <small>
                <i class="icon-double-angle-right"></i>
                显示货品采购详细信息
              </small>
            </h1>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <!-- PAGE CONTENT BEGINS -->
              <div class="row">
                <div class="col-xs-12">
                  <div class="table-header" align="center">
                    货品采购表
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
                          <th class="operate" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="orderoperate: activate to sort column ascending"></th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="order: activate to sort column ascending">采购订单号</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="supplier: activate to sort column ascending">供应商</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="shop: activate to sort column ascending">商铺</th>
                          <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Numbers: activate to sort column ascending">采购数量</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending">总金额</th>
                          <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Clicks: activate to sort column ascending">是否付款</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="operator: activate to sort column ascending"><i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>经办人</th>
                          <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending">订单状态</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="pddate: activate to sort column ascending">预计到货时间</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="redater: activate to sort column ascending">实际到货时间</th>
                          <th class="sorting" role="columnheader" rowspan="1" colspan="1" aria-label="createtime: activate to sort column ascending">创建时间</th>
                          <th class="sorting" role="columnheader" rowspan="1" colspan="1" aria-label="lasttime: activate to sort column ascending">最后更新时间</th>
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
                          <td class=" ">$45</td>
                          <td class="hidden-480 ">3,330</td>
                          <td class=" ">Feb 12</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-warning">Expiring</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                          <td class=" ">$35</td>
                          <td class="hidden-480 ">2,595</td>
                          <td class=" ">Feb 18</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-success">Registered</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">max.com</a>
                          </td>
                          <td class=" ">$60</td>
                          <td class="hidden-480 ">4,400</td>
                          <td class=" ">Mar 11</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-warning">Expiring</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                            <a href="#">best.com</a>
                          </td>
                          <td class=" ">$75</td>
                          <td class="hidden-480 ">6,500</td>
                          <td class=" ">Apr 03</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">pro.com</a>
                          </td>
                          <td class=" ">$55</td>
                          <td class="hidden-480 ">4,250</td>
                          <td class=" ">Jan 21</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-success">Registered</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                            <a href="#">team.com</a>
                          </td>
                          <td class=" ">$40</td>
                          <td class="hidden-480 ">3,200</td>
                          <td class=" ">Feb 09</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">up.com</a>
                          </td>
                          <td class=" ">$95</td>
                          <td class="hidden-480 ">8,520</td>
                          <td class=" ">Feb 22</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                            <a href="#">view.com</a>
                          </td>
                          <td class=" ">$45</td>
                          <td class="hidden-480 ">4,100</td>
                          <td class=" ">Mar 12</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-success">Registered</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">nice.com</a>
                          </td>
                          <td class=" ">$38</td>
                          <td class="hidden-480 ">3,940</td>
                          <td class=" ">Feb 12</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                            <a href="#">fine.com</a>
                          </td>
                          <td class=" ">$25</td>
                          <td class="hidden-480 ">2,983</td>
                          <td class=" ">Apr 01</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-warning">Expiring</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                                <a href="#"><i class="fa fa-angle-double-left"></i></a>
                              </li>
                              <li class="prev disabled">
                                <a href="#"><i class="fa fa-angle-left"></i></a>
                              </li>
                              <li class="active"><a href="#">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li class="next">
                                <a href="#"><i class="fa fa-angle-right"></i></a>
                              </li>
                              <li class="next">
                                <a href="#">
                                  <i class="fa fa-angle-double-right"></i>
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
              采购列表
              <small>
                <i class="icon-double-angle-right"></i>
                显示货品采购详细信息
              </small>
            </h1>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <!-- PAGE CONTENT BEGINS -->
              <div class="row">
                <div class="col-xs-12">
                  <div class="table-header" align="center">
                    货品采购表
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
                          <th class="operate" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="orderoperate: activate to sort column ascending"></th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="order: activate to sort column ascending">采购订单号</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="supplier: activate to sort column ascending">供应商</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="shop: activate to sort column ascending">商铺</th>
                          <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Numbers: activate to sort column ascending">采购数量</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending">总金额</th>
                          <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Clicks: activate to sort column ascending">是否付款</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="operator: activate to sort column ascending"><i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>经办人</th>
                          <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending">订单状态</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="pddate: activate to sort column ascending">预计到货时间</th>
                          <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="redater: activate to sort column ascending">实际到货时间</th>
                          <th class="sorting" role="columnheader" rowspan="1" colspan="1" aria-label="createtime: activate to sort column ascending">创建时间</th>
                          <th class="sorting" role="columnheader" rowspan="1" colspan="1" aria-label="lasttime: activate to sort column ascending">最后更新时间</th>
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
                          <td class=" ">$45</td>
                          <td class="hidden-480 ">3,330</td>
                          <td class=" ">Feb 12</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-warning">Expiring</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                          <td class=" ">$35</td>
                          <td class="hidden-480 ">2,595</td>
                          <td class=" ">Feb 18</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-success">Registered</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">max.com</a>
                          </td>
                          <td class=" ">$60</td>
                          <td class="hidden-480 ">4,400</td>
                          <td class=" ">Mar 11</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-warning">Expiring</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                            <a href="#">best.com</a>
                          </td>
                          <td class=" ">$75</td>
                          <td class="hidden-480 ">6,500</td>
                          <td class=" ">Apr 03</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">pro.com</a>
                          </td>
                          <td class=" ">$55</td>
                          <td class="hidden-480 ">4,250</td>
                          <td class=" ">Jan 21</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-success">Registered</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                            <a href="#">team.com</a>
                          </td>
                          <td class=" ">$40</td>
                          <td class="hidden-480 ">3,200</td>
                          <td class=" ">Feb 09</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-inverse arrowed-in">Flagged</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">up.com</a>
                          </td>
                          <td class=" ">$95</td>
                          <td class="hidden-480 ">8,520</td>
                          <td class=" ">Feb 22</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                            <a href="#">view.com</a>
                          </td>
                          <td class=" ">$45</td>
                          <td class="hidden-480 ">4,100</td>
                          <td class=" ">Mar 12</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-success">Registered</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </td>
                        </tr>
                        <tr class="odd">
                          <td class="center  sorting_1">
                            <label class="position-relative">
                              <input type="checkbox" class="ace">
                              <span class="lbl"></span>
                            </label>
                          </td>

                          <td class=" ">
                            <a href="#">nice.com</a>
                          </td>
                          <td class=" ">$38</td>
                          <td class="hidden-480 ">3,940</td>
                          <td class=" ">Feb 12</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                            <a href="#">fine.com</a>
                          </td>
                          <td class=" ">$25</td>
                          <td class="hidden-480 ">2,983</td>
                          <td class=" ">Apr 01</td>

                          <td class="hidden-480 ">
                            <span class="label label-sm label-warning">Expiring</span>
                          </td>

                          <td class=" ">
                            <div class="hidden-sm hidden-xs action-buttons">
                              <a class="blue" href="#">
                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                              </a>

                              <a class="green" href="#">
                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                              </a>

                              <a class="red" href="#">
                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                              </a>
                            </div>

                            <div class="hidden-md hidden-lg">
                              <div class="inline position-relative">
                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                  <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                  <li>
                                    <a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
                                                                              <span class="blue">
                                                                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
                                                                              <span class="green">
                                                                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>

                                  <li>
                                    <a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
                                                                              <span class="red">
                                                                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                              </span>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
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
                                <a href="#"><i class="fa fa-angle-double-left"></i></a>
                              </li>
                              <li class="prev disabled">
                                <a href="#"><i class="fa fa-angle-left"></i></a>
                              </li>
                              <li class="active"><a href="#">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li class="next">
                                <a href="#"><i class="fa fa-angle-right"></i></a>
                              </li>
                              <li class="next">
                                <a href="#">
                                  <i class="fa fa-angle-double-right"></i>
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