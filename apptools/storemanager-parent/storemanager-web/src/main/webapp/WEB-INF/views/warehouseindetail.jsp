<%--
  Created by IntelliJ IDEA.
  User: songbo
  Date: 2015/12/22
  Time: 1:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" >
<head>
  <title>货品采购</title>
  <%@ include file="/common/common.jsp"%>
</head>

<body>
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
    <%--<%@ include file="/common/leftside.jsp"%>--%>

    <!--主内容-->
    <div>
      <!-- /section:basics/content.breadcrumbs -->
      <div class="page-content">
        <!-- #section:settings.box -->
        <div class="page-header">
          <h1>
            ${basevo.barname}
            <c:if test="${basevo.cxypurchaseorder!=null}">
              <small>
                <i class="icon-double-angle-right"></i>
                订单号:${basevo.cxypurchaseorder.pouid}
              </small>
            </c:if>

          </h1>
        </div>
        <div class="row">
          <div class="col-xs-12">
            <div class="table-header" align="center" >
              <div ondblclick="ShowElement(this);">店铺名称</div>
            </div>
          </div>
          <div class="col-xs-12" style="overflow: auto;width: 100%;">
            <table id="sample-table-1" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info" style="width: 100%">
              <tr>
                <td style="width:20%">店铺地址:</td>
                <td style="width:80%" ondblclick="ShowElement(this);"></td>
              </tr>
            </table>
            <table id="sample-table-2" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info" style="width: 100%">
              <tr>
                <td style="width:20%">联系方式:</td>
                <td style="width:80%" ondblclick="ShowElement(this);"></td>
              </tr>
            </table>
          </div>
          <div class="col-xs-12">
            <div class="table-header" align="center" >
              <div>入库订单详情</div>
            </div>
          </div>
          <div class="col-xs-12" style="overflow: auto;width: 100%;">
            <table id="sample-table-2" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info" style="width: 100%">
              <tr>
                <td style="width:10%">供应商:</td>
                <td style="width:40%" ondblclick="ShowElement(this);"></td>
                <td style="width:10%">入库订单编号:</td>
                <td style="width:40%" ondblclick="ShowElement(this);"></td>

              </tr>
              <tr>
                <td>单据日期:</td>
                <td ondblclick="ShowElement(this);"></td>
                <td>订单编号:</td>
                <td ondblclick="ShowElement(this);"></td>
              </tr>
            </table>
          </div>
          <div class="col-xs-12" style="overflow: auto;width: 100%;">
            <table id="sample-table-2" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info" style="width: 100%">
              <thead>
                <tr>
                  <td>序号</td>
                  <td>品牌</td>
                  <td>款型</td>
                  <td>货号</td>
                  <td>颜色</td>
                  <td>尺寸</td>
                  <td>数量</td>
                  <td>进货单价</td>
                  <td>金额</td>
                  <td>存放位置</td>
                  <td>备注</td>
                </tr>
              </thead>
              <tbody>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                  <table class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info" style="width: 100%">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </table>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>合计</td>
                <td></td>
                <td colspan="4"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>说明</td>
                <td colspan="5"></td>
                <td></td>
                <td>本次收款</td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td colspan="6"></td>
                <td></td>
                <td>本次欠款</td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td colspan="9"></td>
                <td>经办人</td>
                <td></td>
              </tr>
              <tr>
                <td colspan="11" style="  text-align: right;">
                  <button class="btn btn-link" data-toggle="modal" data-target="#addUser"><i class="icon-plus-sign" style="color: darkgrey;font-size: 20px;">新增</i></button></td>
              </tr>

              </tbody>

            </table>
          </div>
        </div>


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
  <script src="${rc.contextPath}/webresources/bootstrap/js/bootstrap.min.js"></script>


  <!-- ace scripts -->
  <script src="${rc.contextPath}/webresources/assets/js/ace-elements.min.js"></script>



  <script src="${rc.contextPath}/webresources/assets/js/rainbow.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/generic.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/html.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/css.js"></script>
  <script src="${rc.contextPath}/webresources/assets/js/javascript.js"></script>
    <script src="${rc.contextPath}/webresources/storemanager/js/purchaseorderdetail.js"></script>

</body>
</html>
