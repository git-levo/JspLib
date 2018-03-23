<%--
  Created by IntelliJ IDEA.
  User: Feng2018
  Date: 2018/3/22
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP练习3-GET请求</title>
</head>
<body>
    <h2>获取GET请求数据</h2>
    <ul>
        <li>
            <p>
                <b>UserName:</b>
                <%=request.getParameter("user")%>
            </p>
        </li>
        <li>
            <p>
                <b>Email:</b>
                <%=request.getParameter("email")%>
            </p>
        </li>
    </ul>

</body>
</html>
