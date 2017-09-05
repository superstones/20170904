<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="Bean.Book" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/4
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<table align="center" border="1px">
    <tr>
        <td>书名</td>
        <td>作者</td>
        <td>价格</td>
    </tr>
    <%--<c:out value="hello"/>--%>
    <%--<c:if test="${1 == 1}">--%>
        <%--<c:out value="0"/>--%>
    <%--</c:if>--%>
    <%--&lt;%&ndash;jstl&ndash;%&gt;--%>
    <%--<c:forEach begin="1" end="4" var="i">--%>
        <%--<c:out value="${i}"/>--%>
    <%--</c:forEach>--%>

    <c:forEach var="book" items="${requestScope.list}">
        <tr>
            <td><c:out value="${book.bookName}"/></td>
            <td><c:out value="${book.bookAuthor}"/></td>
            <td><c:out value="${book.bookPrice}"/></td>
        </tr>
    </c:forEach>
</table>
<a href="AddBook.jsp" >继续添加</a>
</body>
</html>
