<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form><h2>Welcome ${pageContext.request.userPrincipal.name}</h2>
<a onclick="document.forms['logoutForm'].submit()"><label style="font-size: 20px;">Logout</label></a>
<table>
<c:forEach var="profile" items="${profile}">
<tr>
<td>Movie :</td>
<td>${profile.movie}</td>
</tr>
 <tr>
<td>Tickets :</td>
<td>${profile.tickets}<br></td>
</tr> 
		
			
			</c:forEach>
			</table>
</body>
</html>