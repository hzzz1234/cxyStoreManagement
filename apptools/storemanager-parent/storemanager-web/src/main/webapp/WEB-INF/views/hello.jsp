<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/12
  Time: 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>My JSP 'index.jsp' starting page</title>
</head>
<body>
private Integer currencyid;

private String currencyZh;

private String currencyEn;
  <h1>${message}</h1>
  <table>
    <thead>
      <tr>
        <td>id</td>
        <td>engish</td>
        <td>chinese</td>
      </tr>
    </thead>
    <c:forEach var="item" items="${test}">
        <td>
          <td>${item.currencyid}</td>
          <td>${item.currencyEn}</td>
          <td>${item.currencyZh}</td>
        </tr>

    </c:forEach>
  </table>

</body>
</html>
