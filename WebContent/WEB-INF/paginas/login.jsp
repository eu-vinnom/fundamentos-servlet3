<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<c:choose>
		<c:when test="${usuarioLogado!=null}">
Usuario ${usuarioLogado.email} logado
</c:when>
		<c:otherwise>
Usuario ou senha inv�lida
</c:otherwise>
	</c:choose>
</body>
</html>