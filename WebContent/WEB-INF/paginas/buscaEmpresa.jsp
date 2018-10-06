<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	Resultado da busca:
	<ul>
		<c:forEach var="empresa" items="${empresas}">
			<li>${empresa.id}:${empresa.nome}</li>
		</c:forEach>
	</ul>
	<form action="executa?tarefa=BuscaEmpresa" method="post">
		Buscar Empresa: <input type="text" name="filtro" /> <input
			type="submit" value="Buscar" />
	</form>
</body>
</html>