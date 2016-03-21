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
  <title>货品售卖</title>
  <%@ include file="/common/common.jsp"%>
  <link rel="stylesheet" href="${rc.contextPath}/webresources/assets/css/ace.onpage-help.css" />
  <link rel="stylesheet" href="${rc.contextPath}/webresources/assets/css/sunburst.css" />
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
      <%@include file="/common/settings.jsp"%>
      <div class="page-content">

        <div class="page-header">
          <h1>
            ${basevo.barname}
            <small>
              <i class="icon-double-angle-right"></i>
              显示货品售卖信息
            </small>
          </h1>
        </div>

        <div class="row"  style="overflow: scroll">
          <div class="col-xs-12" style="margin-bottom: 10px">
            <button class=" btn btn-sm btn-success" onclick="WriteForm('${rc.contextPath}/productsale/purchaseForm')">新增销售单据</button>
            &nbsp&nbsp<button class=" btn btn-sm btn-success" onclick="deleteMulti()">批量删除</button>
            &nbsp&nbsp<button class=" btn btn-sm btn-success" onclick="reQuery()">刷新记录</button>
            &nbsp&nbsp<button class=" btn btn-sm btn-success">导入销售单</button>
            &nbsp&nbsp<button class=" btn btn-sm btn-success">导出销售单</button>
          </div>
          <div class="col-xs-12">

            <!-- PAGE CONTENT BEGINS -->
            <div class="row">
              <div class="col-xs-12">

                <div class="table-header" align="center">
                  货品售卖表
                </div>

                <div>
                  <div id="sample-table-2_wrapper" class="dataTables_wrapper form-inline" role="grid">
                    <div class="row">
                      <div class="col-xs-6"><div id="sample-table-2_length" class="dataTables_length">
                        <label>显示：
                          <select id="selectValue" size="1" name="sample-table-2_length" aria-controls="sample-table-2" onchange="selectChange()">
                          <option value="10" selected="selected">10</option>
                            <option value="25">25</option>
                            <option value="50">50</option><option value="100">100</option>
                          </select> 记录
                        </label>
                      </div>
                      </div>
                      <div class="col-xs-6">
                        <span class="input-icon" style="right: 0px;float: right;" >
			           <input type="text" placeholder="销售单据号" class="nav-search-input" id="search-input" value="${keywords}">
			           <i class="icon-search nav-search-icon" onclick="queryByKeys()"></i>
			           </span>
                      </div>
                    </div>
                    <div style="overflow: auto;width: 100%;">
                    <table id="sample-table-2" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info" width="1300px">
                    <thead>
                    <tr role="row">
                      <th class="center sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="">
                      <label class="position-relative">
                        <input type="checkbox" class="ace" name="HeadCheck" onclick="checkClick(this)">
                        <span class="lbl"></span>
                      </label>
                    </th>
                      <th class="hidden-480" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending"></th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">销售出库单号</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">商铺</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">客户</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">出库数量</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending">进货单价</th>
                      <th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Clicks: activate to sort column ascending">币种</th>
                      <th class="sorting" role="columnheader" rowspan="1" colspan="1" aria-label="">收款人</th>
                      <th class="hidden-480" role="columnheader" rowspan="1" colspan="1" aria-label="Domain: activate to sort column ascending">单据说明</th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Update: activate to sort column ascending">
                        <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                        创建时间
                      </th>
                      <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample-table-2" rowspan="1" colspan="1" aria-label="Update: activate to sort column ascending">
                      <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                      最后更新时间
                    </th>


                    </tr>
                    </thead>
                    <tbody role="alert" aria-live="polite" aria-relevant="all">
                    <c:forEach var="record" items="${records}">

                      <tr  class="odd tableColoumHeadStyle" id="${record.id}">
                        <td class="center  sorting_1 tableColoumHeadStyle">
                          <label class="position-relative">
                            <input type="checkbox" class="ace" name="tbody_checkItem" value="${record.id}">
                            <span class="lbl"></span>
                          </label>
                        </td>

                        <td class="tableColoumOperateStyle">
                          <div class="hidden-sm hidden-xs action-buttons" width="auto">
                            <a class="blue" href="javascirpt:void(0)" onclick="">
                              <i class="ace-icon glyphicon glyphicon-zoom-in"></i>
                            </a>

                            <a class="green" href="#">
                              <i class="ace-icon glyphicon glyphicon-pencil"></i>
                            </a>

                            <a class="red" href="#">
                              <i class="ace-icon glyphicon glyphicon-minus" onclick="deleteOne(${record.id})"></i>
                            </a>
                          </div>
                        </td>
                        <td class="tableColoumContentStyle">
                          <a href="#">${record.sellid}</a>
                        </td>
                        <td class="tableColoumContentStyle">${record.shopid}</td>
                        <td class="tableColoumContentStyle">${record.clientid}</td>
                        <td class="tableColoumContentStyle">${record.quantity}</td>
                        <td class="tableColoumContentStyle">${record.perprice}</td>
                        <td class="tableColoumContentStyle">${record.currency}</td>
                        <td class="tableColoumContentStyle"><span style="color:#696969">${record.repsor}</span></td>
                        <td class="tableColoumDateStyle">${record.comment}</td>
                        <td class="tableColoumDateStyle">${record.createTime}</td>
                        <td class="tableColoumDateStyle">${record.datachangeLasttime}</td>
                      </tr>

                    </c:forEach>
                    </tbody>
                    </table>
                    </div>
                    <div class="row">
                      <div class="col-xs-6">
                        <div class="dataTables_info" id="sample-table-2_info">显示<span id="start_span">${startIndex}</span> 到 <span id="end_span">${endIndex}</span>  记录</div>
                      </div>
                      <div class="col-xs-6">
                        <div class="dataTables_paginate paging_bootstrap">
                          <ul class="pagination" id="pagination">
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
    <div id="pageCount" style="display: none">${pageCount}</div>
    <div id="pageSize" style="display: none">${pageSize}</div>
  <%@ include file="/common/foot.jsp"%>



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
  <script src="${rc.contextPath}/webresources/assets/js/ace/ace.onpage-help.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/rainbow.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/generic.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/html.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/css.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/javascript.js"></script>
    <script src="${rc.contextPath}/webresources/storemanager/js/salePaging.js"></script>
  <script src="${rc.contextPath}/webresources/storemanager/js/productSale.js"></script>

  <!-- inline scripts related to this page -->
  <script type="text/javascript">
    debugger;
    $("#selectValue option[value='"+document.getElementById("pageSize").innerText+"']").attr("selected",true);
    //初始化分页部分
    function checkClick(obj) {
// 全选或者全不选
      debugger;
      if(obj.checked)
      {
        $("[name = tbody_checkItem]:checkbox").prop("checked",true);

      }else{
        $("[name = tbody_checkItem]:checkbox").removeAttr("checked");
      }

    }


  </script>


</body>
</html>
