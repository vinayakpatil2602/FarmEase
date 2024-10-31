<%@page import="com.farm.DbConnect"%>
<%@page import="java.sql.*"%>

<%
	int catid = Integer.parseInt(request.getParameter("catid"));
	try {
		Connection con = DbConnect.Connect();
		Statement st = con.createStatement();
		st.executeUpdate("delete from category where category_id="+catid+"");
		response.sendRedirect("viewCategory.jsp?msg=deleted");
	} catch (Exception e) {
		System.out.println(e);
	}
%>