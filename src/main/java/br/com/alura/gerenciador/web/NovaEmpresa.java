package br.com.alura.gerenciador.web;

import javax.servlet.http.HttpServletRequest;

import br.com.alura.gerenciador.Empresa;
import br.com.alura.gerenciador.dao.EmpresaDAO;

public class NovaEmpresa implements Tarefa
{
  @Override
  public String executa( HttpServletRequest request, HttpServletRequest response )
  {
    String nome = request.getParameter( "nome" );
    request.setAttribute( "nome", nome );
    Empresa empresa = new Empresa( nome );
    new EmpresaDAO().adiciona( empresa );

    return "/WEB-INF/paginas/novaEmpresa.jsp";
  }
}
