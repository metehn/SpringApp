<%@ taglib prefix="for" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: metehan
  Date: 28.02.2023
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ProductList</title>
</head>
<body>
${products}

<table border="1" >
  <c:forEach var="product" items="${products}">
    <tr>
      <td> ${product.productId}</td>
      <td> ${product.productName}</td>
      <td> ${product.salesPrice}</td>
      <td>  <a href="/product/edit/${product.productId}"> Update</a> </td>
      <td>  <a href="/product/delete/${product.productId}"> Delete</a> </td>
        <c:choose>
          <c:when test="${product.salesPrice >3000}"> PAHALI </c:when>
          <c:otherwise> UCUZ </c:otherwise>
        </c:choose>
      </td>
    </tr>
  </c:forEach>
</table>

<br/>

<a href="/product/edit"> Ekle</a>

</body>
</html>
