<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Feng2018
  Date: 2018/3/22
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
  <head>
    <title>JSP练习1</title>
  </head>
  <body>
  <div style="margin: auto;width: 80%;">
    <h2 align="center">客户端请求头参数数据示例</h2>
    <table width="100%" border="1" align="center">
      <tr BGCOLOR="#949494">
        <th>Header Names</th>
        <th>Header Value(s)</th>
      </tr>
      <%
        Enumeration headerNames=request.getHeaderNames();
        while(headerNames.hasMoreElements()){
            String header=(String)headerNames.nextElement();
            out.print("<tr><td>"+header+"</td>\n");
            String values=(String)request.getHeader(header);
            out.print("<td>"+values+"</td></tr>\n");
        }
      %>
    </table>
  </div>
  </body>
</html>
