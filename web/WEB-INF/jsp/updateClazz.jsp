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
    <title>更新班级信息</title>
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
    <h2>更新班级信息</h2>
    <form action="${pageContext.request.contextPath}/updateClazz" method="post">
            <input type="text" name="cid" value="${clazzs.cid}" style="display: none">
                <td>班级名称:</td>
                <td><input type="text" name="cname" value="${clazzs.cname}"></td>
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
