<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<meta charset="UTF-8">
<body>
	Bem vindo ao nosso gerenciador de empresas!<br />
	<c:if test="${usuarioLogado!=null}">
    Voce esta logado como ${usuarioLogado.email}<br />
	</c:if>
	<br />
	<form action="executa?tarefa=NovaEmpresa" method="post">
		Nome da Empresa: <input type="text" name="nome" /> <input
			type="submit" value="Enviar" />
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