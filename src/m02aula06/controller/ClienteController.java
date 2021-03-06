package m02aula06.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import m02aula06.basica.Cliente;
import m02aula06.model.RNClienteListar;
import m02aula06.model.RNClienteSalvar;
import m02aula06.repository.DAOCliente;

@WebServlet("/clientecontroller")
public class ClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at GET: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Salvar os dados no BD
			
	
		if(request.getParameter("action").equals("salvar")) {
			Cliente cliente = new Cliente();
			cliente.setNome(request.getParameter("nome"));
			cliente.setCpf(request.getParameter("cpf"));
			cliente.setEmail(request.getParameter("email"));
			cliente.setNomeSocial(request.getParameter("nomeSocial"));
			cliente.setTelefone(request.getParameter("telefone"));
			cliente.setSexo(request.getParameter("sexo"));
			cliente.setDataNascimento(request.getParameter("dataNascimento"));
			cliente.setApelido(request.getParameter("apelido"));
			

			try {
				//Salva os dados
				RNClienteSalvar rnSalva = new RNClienteSalvar();
				rnSalva.salvar(cliente);
				
				//Pego a lista de clientes para exibir na sa�da
				RNClienteListar rnLista = new RNClienteListar();
				ArrayList<Cliente> lista = (ArrayList)rnLista.listar();
				request.setAttribute("clientes", lista);

				//Redireciona a sa�da
				RequestDispatcher view = request.getRequestDispatcher("lista_clientes.jsp");
				view.forward(request, response);
			} catch (Exception e) {
				response.getWriter().append("Erro: " + e.getMessage());
			}
		
	}if(request.getParameter("action").equals("excluir")) {
		
		String id = request.getParameter("id");
	
		try {
			//Salva os dados
			DAOCliente dao = new DAOCliente();
			dao.excluir(id);
			
			
			//Redireciona a sa�da
			RNClienteListar rnLista = new RNClienteListar();
			ArrayList<Cliente> lista = (ArrayList)rnLista.listar();
			request.setAttribute("clientes", lista);
			RequestDispatcher view = request.getRequestDispatcher("lista_clientes.jsp");
			view.forward(request, response);
		} catch (Exception e) {
			response.getWriter().append("Erro: " + e.getMessage());
		}
		
	}
if(request.getParameter("action").equals("editar")) {
		
		String id = request.getParameter("id");
	
		try {
			//Salva os dados
			DAOCliente dao = new DAOCliente();
			dao.excluir(id);
			
			
			//Redireciona a sa�da
			RNClienteListar rnLista = new RNClienteListar();
			ArrayList<Cliente> lista = (ArrayList)rnLista.listar();
			request.setAttribute("clientes", lista);
			RequestDispatcher view = request.getRequestDispatcher("lista_clientes.jsp");
			view.forward(request, response);
		} catch (Exception e) {
			response.getWriter().append("Erro: " + e.getMessage());
		}
		
	}
	}
}
