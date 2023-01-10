<%@ page import="kz.aleka.javaEE.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: aliyashakhuali
  Date: 10.01.2023
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row mt-3">
            <div class="col-12">
                <div class="col-6 mx-auto">
                    <%
                        Student student = (Student) request.getAttribute("student");
                        if(student!=null){
                    %>
                        <form action="/savestudent" method="post">
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">NAME:</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" required placeholder="Insert name"
                                           name="name" value="<%=student.getName()%>">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">SURNAME:</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" required placeholder="Insert surname"
                                           name="surname" value="<%=student.getSurname()%>">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">BIRTHDATE:</label>
                                <div class="col-sm-6">
                                    <input type="date" class="form-control"
                                           name="birthdate" value="<%=student.getBirthdate()%>">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-2 col-form-label">CITY:</label>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="city" value="<%=student.getCity()%>">
                                </div>
                            </div>
                        </form>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
