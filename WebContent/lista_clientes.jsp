<%@page import="java.util.List"%>
<%@page import="m02aula06.basica.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- INÍCIO CSS BOOTSTRAP -->
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
		integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
		crossorigin="anonymous">
	<!-- FIM CSS BOOTSTRAP -->

	<!--NAVBAR BONITINHA-->
	<div>
		<nav class="navbar navbar-dark bg-primary">
			<span class="navbar-text"> Início da jornada no fantástico
				mundo Java Web </span>
		</nav>
	</div>
	<!-- FIM DA NAVBAR BONITINHA-->
	<br />

	
	
	<% 
	List<Cliente> lista = (List<Cliente>) request.getAttribute("clientes");
	

for(int i=0; i<lista.size(); i++){	
	

out.println("<br />");



out.println("<div class='card' style='width: 25rem; background-color: #87CEFA; margin: 0 auto; justify-content: center;'>");
out.println("<div class='card-header'><form action='ClienteController' method='POST'> <input type='hidden' name='action' value='excluir'/><input type='hidden' name='id' value="+ lista.get(i).getId()+" /><button onClick=excluir(); type='submit' class='btn btn-danger' value='Excluir'>Excluir</button></div>");




out.println("<ul class='list-group list-group-flush'>");
out.println("<li class='list-group-item'><strong>Nome: </strong>" + lista.get(i).getNome() + "</li>"); 
		
		out.println("<li class='list-group-item'><strong>Nome Social: </strong>" + lista.get(i).getNomeSocial() + "</li>");
		out.println("<li class='list-group-item'><strong>Apelido: </strong>" + lista.get(i).getApelido() + "</li>");
		out.println("<li class='list-group-item'><strong>CPF: </strong>" + lista.get(i).getCpf() + "</li>");
		out.println("<li class='list-group-item'><strong>E-mail: </strong>" + lista.get(i).getEmail() + "</li>");
		out.println("<li class='list-group-item'><strong>Data de Nascimento: </strong>" + lista.get(i).getDataNascimento() + "</li>");
		out.println("<li class='list-group-item'><strong>Sexo: </strong>" +  lista.get(i).getSexo() + "</li>");
		out.println("<li class='list-group-item'><strong>Telefone: </strong>" + lista.get(i).getTelefone() + "</li>");
		out.println("</ul>");
		out.println("</div>");
}

%>
	
		
	
	
	
	  <!--FOOTER-->
    <footer class="page-footer font-small blue pt-4">
        <div class="footer-copyright text-center py-3">Isto é tudo, pessoal!</div>
    </footer>





    <!-- INÍCIO JS BOOTSTRAP -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
        
    <!-- FIM JS BOOTSTRAP -->
    
    <script>
    function excluir(){
    	alert("Exclusão em andamento")
    }
    </script>
</body>
</html>