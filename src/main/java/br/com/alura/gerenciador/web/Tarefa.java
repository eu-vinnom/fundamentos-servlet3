package br.com.alura.gerenciador.web;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

public interface Tarefa
{
  String executa( HttpServletRequest request, HttpServletRequest response );
}
