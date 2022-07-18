<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86176
  Date: 2022/5/6
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>班级信息</title>
    <style>
        table {
            margin: 0 auto;
            width: 100%;
            text-align: center;
        }
        div {
            width: 80%;
            margin: 0 auto;
        }
        h2 {
            display: grid;
            place-items: center;
        }
        a,button {
            text-decoration: none;
            color: #1e90ff;
        }
        .student:hover {
            transform: translateY(-2px);
            box-shadow: 0 0 12px #91c3ec;
        }
        img {
            width: 160px;
            height: 80%;
        }

        .addAndSelectClazz {
            display: flex;
            margin: 0;
            padding: 0;
            justify-content: space-between;
        }

        .student {
            display: block;
            width: 100px;
            height: 30px;
            text-align: center;
            line-height: 30px;
            margin-bottom: 10px;
            padding: 10px;
            background-color: #094995a8;
            color: #fff;
            border-radius: 12px;
        }

        .addClazz {
            display: block;
            width: 100px;
            height: 20px;
            text-align: center;
            line-height: 20px;
            margin-bottom: 10px;
            padding: 10px;
            background-color: #094995a8;
            color: #fff;
            border-radius: 12px;
        }

        .addClazz:hover {
            transform: translateY(-2px);
            box-shadow: 0 0 12px #91c3ec;
        }

        .Mohu_select {
            height: 33px;
            font-size: 16px;
        }

        .Mohu_buttton {
            height: 33px;
            font-size: 16px;
        }

        * {
            font-size: 16px;
        }

        .Cupdate {
            color:#5acb44;
        }

        .Cupdate:hover {
            text-decoration: underline;
        }

        .Cdelete {
            color: indianred
        }

        .Cdelete:hover {
            text-decoration: underline;
        }

    </style>
    <script type="text/javascript" language="JavaScript">
        function delClazz(snum, cid) {
            if(snum!=0){
                window.confirm("该班级内存在学生信息，不可删除")
            }else if (window.confirm("删除操作不可逆，是否确认删除？")) {
                window.location.href="${pageContext.request.contextPath}/deleteClazz/"+cid;
            }
        }
    </script>
</head>
<body>
<div>
    <h2>学生信息管理模块</h2>
    <h3>班级信息</h3>
    <a class="student" href="${pageContext.request.contextPath}/">查看学生信息</a>
    <div class="addAndSelectClazz">
        <a class="addClazz" href="${pageContext.request.contextPath}/toInsertClazz">添加班级信息</a>
        <form action="${pageContext.request.contextPath}/findClazz" method="post">
            <input class="Mohu_select" type="text" name="cname" placeholder="请输入班级名称">
            <button class="Mohu_buttton" type="submit">查询</button>
        </form>
    </div>
    <table border="1">
        <tr>
            <th style="display: none">班级id</th>
            <th>班级名称</th>
            <th>班级人数</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${clazzs}" var="clazz">
            <tr>
                <td style="display: none">${clazz.cid}</td>
                <td>${clazz.cname}</td>
                <td>${clazz.snum}</td>
                <td>
                    <a class="Cupdate" href="${pageContext.request.contextPath}/toUpdateClazz/${clazz.cid}">更新</a> 丨
                    <a class="Cdelete" href="javascript:void(0)" onclick="delClazz('${clazz.snum}', '${clazz.cid}')">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>

</html>
