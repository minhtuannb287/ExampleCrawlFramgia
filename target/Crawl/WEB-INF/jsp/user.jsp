<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
	<div class="login-form">
		<div class="formindex">
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<a href="javascript:formSubmit()" class="hvr-round-corners"> Logout</a>	
				<br>
				<h2 class="text-center">${msg}</h2>				
				<form id="logoutForm" action="<c:url value='/j_spring_security_logout' />" method='POST'>					
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
				<script>
					function formSubmit() {
						document.getElementById("logoutForm").submit();
					}
				</script>
			</c:if>
		</div>
	
	</div>	
		
	
</body>
</html>