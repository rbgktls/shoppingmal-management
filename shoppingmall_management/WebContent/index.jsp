<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/css.css">

</head>
<body>
	<%@include file="common/header.jsp" %>
	<%@include file="common/nav.jsp" %>
	<section>
	<%
		String section = request.getParameter("section") != null? request.getParameter("section"):"";
		switch(section) {
		case "sale_create":
			%> <%@include file="section/sale_create.jsp" %> <%
			break;
			
		case "all_sales_lookup":
			%> <%@include file="section/all_sales_lookup.jsp" %> <%
			break;
			
		case "by_product_sales":
			%> <%@include file="section/by_product_sales.jsp" %> <%
			break;
			
		case "by_category_sales_lookup":
			%> <%@include file="section/by_category_sales_lookup.jsp" %> <%
			break;
			
		default:
			%>
			<pre>
<b>쇼핑몰 관리 프로그램</b>

쇼핑몰을 관리하기 위한 프로그램이다.

1.상품테이블, 카테고리 테이블, 매출정보 테이블을 생성한다
2.판매 등록, 통합 매출 내역 조회, 상품별 매출현황, 카테고리별 매출현황 조회 페이지를 작성한다.
3.올바르게 구현되었는지 확인한다.
			</pre><%
			break;
		}
	%>
	</section>
	<%@include file="common/footer.jsp" %>
</body>
</html>