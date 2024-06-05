
<%@page import="javax.swing.plaf.basic.BasicCheckBoxMenuItemUI"%>
<%@ page import="java.io.*,java.util.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh", 60);

		Calendar calendar = new GregorianCalendar();

		String am_pm;
		int hour = calendar.get(Calendar.HOUR);
		int minute = calendar.get(Calendar.MINUTE);
		int second = calendar.get(Calendar.SECOND);

		if (calendar.get(Calendar.AM_PM) == 0)
			am_pm = "AM";
		else
			am_pm = "PM";
		String CT = hour + ":" + minute + ":" + second + " " + am_pm;
		out.println( hour + " : " + minute + " " +am_pm);
	%>

</body>
</html>