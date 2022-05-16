<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.farmMarket.farmMarket.mybeans.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String prodnm = request.getParameter("prodnm");

	try {

		String nm;

		prodnm += "%";
		Connection con;
		PreparedStatement pst;
		ResultSet rs;

		con = DBConnector.getConnected();
		pst = con.prepareStatement("select * from productList where prod_name like '?';");
		pst.setString(1, prodnm);
		rs = pst.executeQuery();

		while (rs.next()) {
	%>
	<p>rs.getString("prod_name");</p>
	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>