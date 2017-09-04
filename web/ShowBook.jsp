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
    <%
        List<Book> list = (List<Book>) session.getAttribute("list");
        System.out.println(list);
        if (list == null || list.size() < 1) {


            System.out.println("无数据");
        } else {
            for (Book book : list) {
    %>
    <%=book.getBookName()%>
    <%=book.getBookAuthor()%>
    <%=book.getBookPrice()%>

    <%


            }


        }


    %>
    <%--${sessionScope.list[0].name}--%>
</head>
<body>

</body>
</html>
