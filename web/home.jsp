<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.aleka.javaEE.model.Book" %><%--
  Created by IntelliJ IDEA.
  User: aliyashakhuali
  Date: 09.01.2023
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        ArrayList<Book> books = (ArrayList<Book>) request.getAttribute("books");
        for(Book book : books){
    %>
        <h1><%=book.getName()%></h1>
        <h1><%=book.getPrice()%></h1>
        <h1><%=book.getAuthor()%></h1>
    <%
        }
    %>
</body>
</html>
