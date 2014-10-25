<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="wsd.vms.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vehicle Management System</title>
</head>
<body>
	<jsp:useBean id="user" class="wsd.vms.User" scope="session" />
	<%
		int userId = user.getId();
		int tripId = Integer.parseInt(request.getParameter("tripId"));
		String vehiclesFilePath = application
				.getRealPath("vehicles.xml");
	%>
	<jsp:useBean id="vms" class="wsd.vms.VehicleManagementApplication"
		scope="application">
	<jsp:setProperty name="vms" property="vehiclesFilePath" value="<%=vehiclesFilePath%>" />
	</jsp:useBean>

	<%= userId %> <%=tripId %>

	<%
		vms.deleteTrip(tripId, userId);
	%>

	<p>DONE</p>

	<a href="index.jsp">Return to home</a>


</body>
</html>