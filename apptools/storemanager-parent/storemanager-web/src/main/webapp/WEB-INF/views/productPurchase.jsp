<%--
  Created by IntelliJ IDEA.
  User: songbo
  Date: 2015/12/22
  Time: 1:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" ng-app="productDefine" >
<head>
  <title>货品采购</title>
  <%@ include file="/common/common.jsp"%>

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
      <!-- #section:basics/content.breadcrumbs -->
      <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
          try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
        </script>

        <ul class="breadcrumb">
          <li>
            <i class="ace-icon fa fa-home home-icon"></i>
            <a href="#">主页</a>
          </li>

          <li>
            <a href="#">采购列表</a>
          </li>

        </ul><!-- /.breadcrumb -->

        <!-- #section:basics/content.searchbox -->
        <div class="nav-search" id="nav-search">
          <form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off">
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
          </form>
        </div><!-- /.nav-search -->

        <!-- /section:basics/content.searchbox -->
      </div>

      <!-- /section:basics/content.breadcrumbs -->
      <div class="page-content">
        <!-- #section:settings.box -->
        <div class="ace-settings-container" id="ace-settings-container">
          <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
            <i class="ace-icon fa fa-cog bigger-150"></i>
          </div>

          <div class="ace-settings-box clearfix" id="ace-settings-box">
            <div class="pull-left width-50">
              <!-- #section:settings.skins -->
              <div class="ace-settings-item">
                <div class="pull-left">
                  <select id="skin-colorpicker" class="hide">
                    <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                    <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                    <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                    <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                  </select><div class="dropdown dropdown-colorpicker">		<a data-toggle="dropdown" class="dropdown-toggle" data-position="auto" href="#"><span class="btn-colorpicker" style="background-color:#438EB9"></span></a><ul class="dropdown-menu dropdown-caret"><li><a class="colorpick-btn selected" href="#" style="background-color:#438EB9;" data-color="#438EB9"></a></li><li><a class="colorpick-btn" href="#" style="background-color:#222A2D;" data-color="#222A2D"></a></li><li><a class="colorpick-btn" href="#" style="background-color:#C6487E;" data-color="#C6487E"></a></li><li><a class="colorpick-btn" href="#" style="background-color:#D0D0D0;" data-color="#D0D0D0"></a></li></ul></div>
                </div>
                <span>&nbsp; Choose Skin</span>
              </div>

              <!-- /section:settings.skins -->

              <!-- #section:settings.navbar -->
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar">
                <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
              </div>

              <!-- /section:settings.navbar -->

              <!-- #section:settings.sidebar -->
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar">
                <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
              </div>

              <!-- /section:settings.sidebar -->

              <!-- #section:settings.breadcrumbs -->
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs">
                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
              </div>

              <!-- /section:settings.breadcrumbs -->

              <!-- #section:settings.rtl -->
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl">
                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
              </div>

              <!-- /section:settings.rtl -->

              <!-- #section:settings.container -->
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container">
                <label class="lbl" for="ace-settings-add-container">
                  Inside
                  <b>.container</b>
                </label>
              </div>

              <!-- /section:settings.container -->
            </div><!-- /.pull-left -->

            <div class="pull-left width-50">
              <!-- #section:basics/sidebar.options -->
              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover">
                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact">
                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
              </div>

              <div class="ace-settings-item">
                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight">
                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
              </div>

              <!-- /section:basics/sidebar.options -->
            </div><!-- /.pull-left -->
          </div><!-- /.ace-settings-box -->
        </div><!-- /.ace-settings-container -->

        <!-- /section:settings.box -->
        <div class="page-header">
          <h1>
            采购列表
            <small>
              <i class="ace-icon fa fa-angle-double-right"></i>
              显示货品采购详细信息
            </small>
          </h1>
        </div><!-- /.page-header -->

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
                      <th class="operate" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="orderoperate: activate to sort column ascending">单据操作</th>
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
      </div><!-- /.page-content -->


      <div class="footer">
        <div class="footer-inner">
          <!-- #section:basics/footer -->
          <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application © 2013-2014
						</span>

            &nbsp; &nbsp;
						<span class="action-buttons">
							<a href="#">
                              <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                            </a>

							<a href="#">
                              <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                            </a>

							<a href="#">
                              <i class="ace-icon fa fa-rss-square orange bigger-150"></i>
                            </a>
						</span>
          </div>

          <!-- /section:basics/footer -->
        </div>
      </div>
    </div>


    <!--置顶-->
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
      <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>
  </div>
  <%@ include file="/common/foot.jsp"%>

  <script src="${rc.contextPath}/webresources/storemanager/js/productPurchase.js"></script>

  <script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='${rc.contextPath}/webresources/jquery/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
  </script>
  <script src="${rc.contextPath}/webresources/bootstrap/js/bootstrap.min.js"></script>

  <!-- page specific plugin scripts -->
  <script src="${rc.contextPath}/webresources/jquery/js/jquery.dataTables.min.js"></script>
  <script src="${rc.contextPath}/webresources/jquery/js/jquery.dataTables.bootstrap.js"></script>

  <!-- ace scripts -->
  <script src="${rc.contextPath}/webresources/assets/js/ace-elements.min.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/ace.min.js"></script>

  <!-- inline scripts related to this page -->
  <script type="text/javascript">
    jQuery(function($) {
      var oTable1 =
              $('#sample-table-2')
                //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                      .dataTable( {
                        bAutoWidth: false,
                        "aoColumns": [
                          { "bSortable": false },
                          null, null,null, null, null,
                          { "bSortable": false }
                        ]


                        //,
                        //"sScrollY": "200px",
                        //"bPaginate": false,

                        //"sScrollX": "100%",
                        //"sScrollXInner": "120%",
                        //"bScrollCollapse": true,
                        //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
                        //you may want to wrap the table inside a "div.dataTables_borderWrap" element

                        //"iDisplayLength": 50
                      } );



      $(document).on('click', 'th input:checkbox' , function(){
        var that = this;
        $(this).closest('table').find('tr > td:first-child input:checkbox')
                .each(function(){
                  this.checked = that.checked;
                  $(this).closest('tr').toggleClass('selected');
                });
      });


      $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
      function tooltip_placement(context, source) {
        var $source = $(source);
        var $parent = $source.closest('table')
        var off1 = $parent.offset();
        var w1 = $parent.width();

        var off2 = $source.offset();
        //var w2 = $source.width();

        if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
        return 'left';
      }

    })
  </script>

  <link rel="stylesheet" href="${rc.contextPath}/webresources/assets/css/ace.onpage-help.css" />
  <link rel="stylesheet" href="${rc.contextPath}/webresources/assets/css/sunburst.css" />

  <script type="text/javascript"> ace.vars['base'] = '..'; </script>
  <script src="${rc.contextPath}/webresources/assets/js/ace/ace.onpage-help.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/rainbow.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/generic.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/html.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/css.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/javascript.js"></script>
</body>
</html>
