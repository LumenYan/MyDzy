<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86176
  Date: 2022/5/6
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生信息</title>
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
            margin-left: 35%;
        }
        option {
            text-align: center;
        }
    </style>
</head>
<body>
    <div>
    <h2>添加学生信息</h2>
        <form action="${pageContext.request.contextPath}/insertStudent" method="post" enctype="multipart/form-data">
            学号：<input type="text" name="sn"><br>
            照片：<input type="file" name="uploadPicture"><br>
            姓名：<input type="text" name="name"><br>
            性别：<select name="sex">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select><br>
            班级：<select name="clazz">
                    <option value="value" selected>请选择班级</option>
                    <c:forEach items="${clazzs}" var="clazz">
                        <option value="${clazz.cname}">${clazz.cname}</option>
                    </c:forEach>
                </select><br>
            评价：<input type="text" name="evaluation"><br><br>
            <input type="submit" value="提交"> <input type="reset" value="重置">
        </form>
    </div>
</body>
</html>
