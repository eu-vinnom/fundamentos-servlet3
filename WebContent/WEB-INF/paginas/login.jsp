<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<body>
	<c:choose>
		<c:when test="${usuarioLogado!=null}">
Usuário ${usuarioLogado.email} logado
</c:when>
		<c:otherwise>
Usuario ou senha inválida
</c:otherwise>
	</c:choose>
</body>
</html>