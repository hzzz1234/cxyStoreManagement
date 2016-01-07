<%--
  Created by IntelliJ IDEA.
  User: songbo
  Date: 2016/1/6
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body style="background-color: #f5f5f5">
<script language="javascript" src="${rc.contextPath}/webresources/storemanager/js/productPurchase.js"></script>
<script>
  function FormClose(){
    this.parentDialog.close();
  }
  function FormSubmit(){

  }
</script>
<div style="text-align: center"><span style="font-size:large;font-weight: bold;text-align: center">采购单填写</span></div>
<form action="productPurchase.jsp">
  <table width="100%" border="0" height="300" align="center"  bordercolor="#666666">
    <tbody>
    <tr>
      <th style="text-align: right">供应商：</th>
      <th style="text-align: left"><input type="text"></th>
      <th style="text-align: right">商铺：</th>
      <th style="text-align: left"><input type="text"></th>
    </tr>
    <tr>
      <th style="text-align: right">采购数量：</th>
      <th style="text-align: left"><input type="text"></th>
      <th style="text-align: right">总金额：</th>
      <th style="text-align: left"><input type="text"></th>

    </tr>
    <tr>
      <th style="text-align: right">
        经办人：
      </th>
      <th style="text-align: left">
        <input type="text">
      </th>
      <th style="text-align: right">单据状态：</th>
      <th style="text-align: left"><input type="checkbox"  ><span>激活</span></th>
    </tr>
    <tr>
      <th style="text-align: right;">单据说明：</th>
      <th style="text-align: left;" colspan="3"><input  type="text" style="width: 100%;height: 100%"></th>
    </tr>
    <tr>
      <td colspan="4" align="left" style="text-align:center"><input align="bottom" type="button" onclick="FormSubmit()" value="保存  " class="buttonStyle"> <input onclick="FormClose()" class="buttonStyle" type="button" value="关闭" align="bottom"></td>
    </tr>
    </tbody>
  </table>
</form>
<link rel="stylesheet" href="${rc.contextPath}/webresources/assets/css/ace.onpage-help.css" />
<link rel="stylesheet" href="${rc.contextPath}/webresources/assets/css/sunburst.css" />

</body>
</html>
