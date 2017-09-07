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
<table  border="1px">
    <tr>
        数据库中已有的书籍信息如下
        <td>书名</td>
        <td>作者</td>
        <td>价格</td>
    </tr>
        <%

            for (Book book: (List<Book>) request.getAttribute("bookList")){
               pageContext.setAttribute("book",book);

        %>


    <%--EL表达式--%>
    <tr>
        <td>${book.bookName}</td>
        <td>${book.bookAuthor}</td>
        <td>${book.bookPrice}</td>

    </tr>

    <%}%>


</table>
<a href="AddBook.jsp"  >继续添加</a>
</body>
</html>
<%--<tr>--%>
<%--<td><%=book.getBookName()%></td>--%>
<%--<td><%=book.getBookAuthor()%></td>--%>
<%--<td><%=book.getBookPrice()%></td>--%>

<%--</tr>--%>




//JSTL
<%--<c:out value="hello"/>--%>
<%--<c:if test="${1 == 1}">--%>
<%--<c:out value="0"/>--%>
<%--</c:if>--%>
<%--&lt;%&ndash;jstl&ndash;%&gt;--%>
<%--<c:forEach begin="1" end="4" var="i">--%>
<%--<c:out value="${i}"/>--%>
<%--</c:forEach>--%>

<%--<c:forEach var="book" items="${requestScope.list}">--%>
<%--<tr>--%>
<%--<td><c:out value="${book.bookName}"/></td>--%>
<%--<td><c:out value="${book.bookAuthor}"/></td>--%>
<%--<td><c:out value="${book.bookPrice}"/></td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>