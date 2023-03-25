<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: metehan
  Date: 28.02.2023
  Time: 03:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<form:form method="post" modelAttribute="product">
    <form:errors />
    <fieldset class="form-group">
        <form:label path="productId"> Product ID</form:label>
       <form:input path="productId" type="text" disabled="true"/>
        <form:errors path="productId"/>
    </fieldset>

    <fieldset class="form-group">
        <form:label path="productName"> Product Name</form:label>
        <form:input path="productName" type="text" />
        <form:errors path="productName"/>
    </fieldset>

    <fieldset class="form-group">
        <form:label path="salesPrice"> Sales Price</form:label>
        <form:input path="salesPrice" type="text" />
        <form:errors path="salesPrice"/>
    </fieldset>

    <button type="sumbit"> Save </button>
</form:form>

</body>
</html>
