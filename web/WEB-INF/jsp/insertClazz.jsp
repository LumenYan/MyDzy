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
    <title>添加班级信息</title>
    <style>
        div {
            width: 600px;
            margin: 180px auto;
        }
        h2 {
            display: grid;
            place-content: center;
        }
        form {
            margin-left: 32%;
        }
    </style>
</head>
<body>
    <div>
        <h2>添加班级信息</h2>
        <form action="${pageContext.request.contextPath}/insertClazz">
            班级名称：<input type="text" name="cname"><br><br>
            <input type="submit" value="提交"> <input type="reset" value="重置">
        </form>
    </div>
</body>
</html>
