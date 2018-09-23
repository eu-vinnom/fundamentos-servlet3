package br.com.alura.gerenciador.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import br.com.alura.gerenciador.Usuario;
import br.com.alura.gerenciador.dao.UsuarioDAO;

public class Login implements Tarefa
{
  @Override
  public String executa( HttpServletRequest request, HttpServletRequest response )
  {
    String email = request.getParameter( "email" );
    String senha = request.getParameter( "senha" );

    Usuario usuario = new UsuarioDAO().buscaPorEmailESenha( email, senha );
    if( usuario != null )
    {
      HttpSession session = request.getSession();
      session.setAttribute( "usuarioLogado", usuario );
    }
    return "/WEB-INF/paginas/login.jsp";
  }
}
