<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	Bem vindo ao nosso gerenciador de empresas!
	<br />
	<c:if test="${usuarioLogado!=null}">
    Você está logado como ${usuarioLogado.email}<br />
	</c:if>
	<br />
	<form action="executa?tarefa=NovaEmpresa" method="post">
		Nova Empresa: <input type="text" name="nome" /> <input type="submit"
			value="Adicionar" />
	</form>
	<form action="executa?tarefa=BuscaEmpresa" method="post">
		Buscar Empresa: <input type="text" name="filtro" /> <input
			type="submit" value="Buscar" />
	</form>
	<form action="executa?tarefa=Login" method="post">
		Email: <input type="text" name="email" /> Senha: <input
			type="password" name="senha" /> <input type="submit" value="Login" />
	</form>
	<form action="executa?tarefa=Logout" method="post">
		<input type="submit" value="Logout" />
	</form>
</body>
</html>