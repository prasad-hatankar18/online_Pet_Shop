<%@page import="Data1.displaylist"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Data1.PetList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String category="Dog";
	category=request.getParameter("category"); %>

<section class=" div4 container mb-5">
			<h1 class="ms-5">Latest Posts</h1>
			<div class="mainb d-flex flex-wrap justify-content-center">
				<jsp:useBean id="ob" class="Data1.main" />
				
				<%
				    List<PetList> list = new ArrayList<PetList>();
				    list = displaylist.getAllCategory(category);
				    int sr = 1;
				%>
				<%-- <%for(PetList e:list) {%> --%>
				<div class="mainb d-flex flex-wrap justify-content-center">
				    <% for (int i = list.size() - 1; i >= 0; i--) {
				        PetList e = list.get(i);
				    %>
				    <div class="tb">
				        <img src="IMG/aa.jpg" height="100px" class="" alt="...">
				       	
					        <h4>Name:<%= e.getName() %></h4>
					        <h2>Category:<%= e.getCategory() %></h2>
					        <h5>Desc:-<%= e.getDesci() %></h5>
					        <h4>Price:-<%= e.getPrice() %></h4>
					        <%-- <h3><%=e.getImg() %></h3> --%>
					        <button class="my-3 bttn">Read More</button>
					    
				    </div>
				    <% } %>
				</div>
			</div>
		</section>
</body>
</html>