<%--
  Created by IntelliJ IDEA.
  User: Feng2018
  Date: 2018/3/22
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>JSP练习2-自动刷新</title>
</head>
<body>
<div style="margin: auto;width: 80%">
    <h2 align="center">自动刷新示例</h2>
    <%
        response.setIntHeader("Refresh",3);

        Calendar calendar=new GregorianCalendar();
        String am_pm;
        int year=calendar.get(Calendar.YEAR);
        int month=calendar.get(Calendar.MONTH)+1;
        int day=calendar.get(Calendar.DAY_OF_MONTH);
        int hour=calendar.get(Calendar.HOUR);
        int minute=calendar.get(Calendar.MINUTE);
        int second=calendar.get(Calendar.SECOND);
        if(calendar.get(Calendar.AM_PM)==0){
            am_pm="AM";
        }else {
            am_pm="PM";
        }
        String CT =year+"-"+month+"-"+day+" "+hour + ":" + minute + ":" + second + " " + am_pm;
        out.println("Current Time is: " + CT + "\n");
    %>
</div>
</body>
</html>
