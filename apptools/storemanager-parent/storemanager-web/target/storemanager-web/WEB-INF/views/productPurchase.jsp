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
<link href="${rc.contextPath}/webresources/storemanager/css/ProductPurchase.css" type="text/css" rel="stylesheet"/>
  <script type="text/javascript">
    $(function () {
// 全选或者全不选
      $("#HeadCheck").bind("click", function () {
        if($("#HeadCheck").checked())
        {
          $("[name = checkItem]:checkbox").attr("checked", true);
        }else{
          $("[name = checkItem]:checkbox").attr("checked", false);
        }

      });
    });
  </script>
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
      <%@include file="/common/breadcrumb.jsp"%>
      <%@include file="/common/settings.jsp"%>
      <!-- /section:basics/content.breadcrumbs -->
      <div class="page-content">
        <!-- #section:settings.box -->
        <div class="page-header">
          <h1>
            ${basevo.barname}
            <small>
              <i class="icon-double-angle-right"></i>
              显示货品采购详细信息
            </small>
          </h1>
        </div>
        <div class="row">
          <div class="col-xs-12" style="margin-bottom: 10px">
            <input type="button" value="新增采购单据" onclick="WriteForm('${rc.contextPath}/productpurchase/purchaseForm')">
            &nbsp&nbsp<input type="button" value="刷新记录" onclick="">
            &nbsp&nbsp<input type="button" value="导入采购单" onclick="">
            &nbsp&nbsp<input type="button" value="导出采购单" onclick="">
          </div>
          <div class="col-xs-12" style="overflow: scroll">
            <!-- PAGE CONTENT BEGINS -->
            <div class="row">
              <div class="col-xs-12">
                <div class="table-header" align="center">
                  货品采购表
                </div>

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
                    <div style="overflow: auto;width: 100%;height: 100%;" >
                    <table id="sample-table-2" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info" style="width: 1300px">
                    <thead >
                    <tr role="row">
                      <th class="center sorting_disabled tableColoumStyle" role="columnheader" rowspan="1" colspan="1" aria-label="">
                      <label class="position-relative">
                        <input type="checkbox" class="ace" name="HeadCheck">
                        <span class="lbl"></span>
                      </label>
                    </th>
                      <th class="operate tableColoumStyle" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="orderoperate: activate to sort column ascending"></th>
                      <th class="sorting " role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="order: activate to sort column ascending" style="width: 110px">采购订单号</th>
                      <th class="sorting " role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="supplier: activate to sort column ascending">供应商</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="shop: activate to sort column ascending">商铺</th>
                      <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Numbers: activate to sort column ascending">采购数量</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending">总金额</th>
                      <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Clicks: activate to sort column ascending">是否付款</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="operator: activate to sort column ascending"><i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>经办人</th>
                      <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending">订单状态</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="pddate: activate to sort column ascending">预计到货时间</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="redater: activate to sort column ascending">实际到货时间</th>
                      <th class="sorting" role="columnheader" rowspan="1" colspan="1" aria-controls="sample-table-2" aria-label="createtime: activate to sort column ascending">创建时间</th>
                      <th class="sorting" role="columnheader" rowspan="1" colspan="1" aria-controls="sample-table-2" aria-label="lasttime: activate to sort column ascending">最后更新时间</th>
                    </tr>
                    </thead>
                    <tbody role="alert" aria-live="polite" aria-relevant="all">

                    <c:forEach var="record" items="${records}">

                      <tr class="odd tableColoumHeadStyle">
                        <td class="center  sorting_1 tableColoumHeadStyle">
                          <label class="position-relative">
                            <input type="checkbox" class="ace" name="checkItem">
                            <span class="lbl"></span>
                          </label>
                        </td>

                        <td class="tableColoumOperateStyle">
                          <div class="hidden-sm hidden-xs action-buttons" width="auto">
                            <a class="blue" href="#">
                              <i class="ace-icon glyphicon glyphicon-zoom-in"></i>
                            </a>

                            <a class="green" href="#">
                              <i class="ace-icon glyphicon glyphicon-pencil"></i>
                            </a>

                            <a class="red" href="#">
                              <i class="ace-icon glyphicon glyphicon-minus"></i>
                            </a>
                          </div>
                        </td>
                        <td class="tableColoumContentStyle">
                          <a href="#">${record.pouid}</a>
                        </td>
                        <td class="tableColoumContentStyle">${record.supplierid}</td>
                        <td class="tableColoumContentStyle">${record.shopid}</td>
                        <td class="tableColoumContentStyle">${record.quantity}</td>
                        <td class="tableColoumContentStyle">${record.totalamout}</td>
                        <td class="tableColoumContentStyle">${record.payamount}</td>
                        <td class="tableColoumContentStyle"><i class="text">${record.repsor}</i>s</td>

                        <td class="hidden-480 tableColoumSatausStyle">
                          <span class="label label-sm label-warning">${record.status}</span>
                        </td>
                        <td class="tableColoumDateStyle">${record.pddate}</td>
                        <td class="tableColoumDateStyle">${record.redate}</td>
                        <td class="tableColoumDateStyle">${record.createTime}</td>
                        <td class="tableColoumDateStyle">${record.datachangeLasttime}</td>
                      </tr>

                    </c:forEach>


                    </tbody>
                    </table>
                    </div>
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

          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.page-content -->


      <div class="footer">
        <div class="footer-inner">
          <!-- #section:basics/footer -->
          <div class="footer-content" align="center">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application © 2016-2017
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


  <script src="${rc.contextPath}/webresources/bootstrap/js/bootstrap.min.js"></script>

  <!-- page specific plugin scripts -->
  <script src="${rc.contextPath}/webresources/jquery/js/jquery.dataTables.min.js"></script>
  <script src="${rc.contextPath}/webresources/jquery/js/jquery.dataTables.bootstrap.js"></script>

  <!-- ace scripts -->
  <script src="${rc.contextPath}/webresources/assets/js/ace-elements.min.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/ace.min.js"></script>

  <!-- inline scripts related to this page -->


  <link rel="stylesheet" href="${rc.contextPath}/webresources/assets/css/ace.onpage-help.css" />
  <link rel="stylesheet" href="${rc.contextPath}/webresources/assets/css/sunburst.css" />


  <script src="${rc.contextPath}/webresources/assets/js/ace/ace.onpage-help.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/rainbow.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/generic.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/html.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/css.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/javascript.js"></script>
</body>
</html>
