<%--
  Created by IntelliJ IDEA.
  User: Feng2018
  Date: 2018/3/22
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/sql" prefix="sql" %>
<html>
<head>
    <title>练习5-JSTL核心标签3</title>
</head>
<body>
<div style="margin: auto;width: 80%">
    <sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/test?useSSL=false&characterEncoding=utf8"
                       user="root" password="root"/>
    <sql:update var="delete" dataSource="${connection}">
        DELETE FROM employees WHERE id>10;
    </sql:update>

    <sql:query var="result" dataSource="${connection}">
        SELECT * FROM employees;
    </sql:query>

    <table border="1" width="100%">
        <tr bgcolor="#949494">
            <th>编号</th>
            <th>姓名</th>
            <th>薪水</th>
            <th>地址</th>
        </tr>
        <c:forEach var="row" items="${result.rows}">
            <tr>
                <td><c:out value="${row.id}"/></td>
                <td><c:out value="${row.name}"/></td>
                <td><c:out value="${row.salary}"/></td>
                <td><c:out value="${row.address}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
