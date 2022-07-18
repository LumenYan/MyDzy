<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86176
  Date: 2022/5/7
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新学生信息</title>
    <style>
        div {
            width: 800px;
            margin: 120px auto;

        }
        h2 {
            display: grid;
            place-content: center;
        }
        form {
            margin-left: 40%;
        }
    </style>
</head>
<body>
    <div>
    <h2>更新学生信息</h2>
    <form action="${pageContext.request.contextPath}/updateStudent" method="post" enctype="multipart/form-data">
            <input type="text" name="id" value="${student.id}" style="display: none">
            <tr>
                <td>学号:</td>
                <td><input type="text" name="sn" value="${student.sn}"></td>
            </tr><br>
            <tr>
                <td>姓名:</td>
                <td><input type="text" name="name" value="${student.name}"></td>
            </tr><br>
            <tr>
                <td>性别:</td>
                <td>
                    <select name="sex">
                        <option value="男" ${student.sex=="男"?"selected":""}>男</option>
                        <option value="女" ${student.sex=="女"?"selected":""}>女</option>
                    </select>
                </td>
            </tr><br>
            <tr>
                <td>班级:</td>
                <td>
                    <input type="text" name="clazz" value="${student.clazz}">
                </td>
            </tr><br>
            <tr>
                <td>评价:</td>
                <td><input type="text" name="evaluation" value="${student.evaluation}"></td>
            </tr><br><br>
            <tr>
                <td colspan="2" align="center">
                    <button type="submit">提交</button> &nbsp;
                    <button type="reset">重置</button>
                </td>
            </tr>
    </form>
    </div>
</body>
</html>
