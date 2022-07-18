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
    <title>学生信息</title>
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
      a{
        text-decoration: none;
      }
      .clazz:hover {
          transform: translateY(-2px);
          box-shadow: 0 0 12px #91c3ec;
      }
      img {
          width: 160px;
          height: 80%;
      }
      .addAndSelect {
          display: flex;
          margin: 0;
          padding: 0;
          justify-content: space-between;
      }
      .clazz {
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

        .addStudent {
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

        .addStudent:hover {
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

        .Supdate {
            color:#5acb44;
        }

        .Supdate:hover {
            text-decoration: underline;
        }

        .Sdelete {
            color: indianred;
        }

        .Sdelete:hover {
            text-decoration: underline;
        }

    </style>
      <script type="text/javascript" language="JavaScript">
        function del(id) {
            if (window.confirm("删除操作不可逆，是否确认删除？")){
                window.location.href="${pageContext.request.contextPath}/deleteStudent/"+id;
            }
        }
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
      <h3 >学生信息</h3>
          <a class="clazz" href="${pageContext.request.contextPath}/toClazzIndex">
              查看班级信息
          </a>
      <div class="addAndSelect">
              <a class="addStudent" href="${pageContext.request.contextPath}/toInsertStudent">添加学生信息</a>
          <form action="${pageContext.request.contextPath}/findStudent" method="post">
              <input class="Mohu_select" type="text" name="name" placeholder="按姓名/班级模糊查询">
              <button class="Mohu_buttton" type="submit">查询</button>
          </form>
      </div>
      <table border="1">
        <tr>
            <th style="display: none">id</th>
            <th>照片</th>
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>班级</th>
            <th>评价</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${students}" var="student">
          <tr>
            <td style="display: none">${student.id}</td>
              <td><img src="${pageContext.request.contextPath}/img/studentPictures/${student.picture}"/></td>
              <td>${student.sn}</td>
              <td>${student.name}</td>
              <td>${student.sex}</td>
              <td>${student.clazz}</td>
              <td>${student.evaluation}</td>
            <td>
                <a class="Supdate" href="${pageContext.request.contextPath}/toUpdateStudent/${student.id}">更新</a> 丨
                <a class="Sdelete" href="javascript:void(0)" onclick="del('${student.id}')">删除</a>
            </td>
          </tr>
        </c:forEach>
      </table>
  </div>
  </body>

</html>
