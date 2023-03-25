<%--
  Created by IntelliJ IDEA.
  User: metehan
  Date: 28.02.2023
  Time: 03:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<head>
    <title>< Tag Example</title>
</head>

<body>
<c:forEach var = "i" begin = "1" end = "5">
Item <c:out value = "${i}"/><p>
    </c:forEach>
</body>
</html>