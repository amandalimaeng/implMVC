<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário</title>
</head>

<body>

  <!-- INÍCIO CSS BOOTSTRAP -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!-- FIM CSS BOOTSTRAP -->

    <!--NAVBAR BONITINHA-->
    <div>
        <nav class="navbar navbar-dark bg-primary">
            <span class="navbar-text">
                Início da jornada no fantástico mundo Java Web
            </span>
        </nav>
    </div>
    <!-- FIM DA NAVBAR BONITINHA-->
    <br />

   <!-- INÍCIO DO FORMULÁRIO QUE ENVIARÁ OS DADOS VIA POST PARA O resposta.jsp-->
    <div class="w-75 p-3" style="background-color: #87CEFA; margin: 0 auto; justify-content: center;">
   
     <form action="ClienteController" method="POST">
		<input type="hidden" name="action" value="salvar"/>
            <div class="form-group">
                <label for="enterNome">Nome completo: </label>
                <input required type="text" class="form-control" id="nome" name="nome" placeholder="Digite o seu nome completo">
            </div>
            <div class="form-group">
                <label for="enterNomeSocial">Nome social: </label>
                <input type="text" class="form-control" id="nomeSocial" name="nomeSocial" placeholder="Digite o seu nome social, caso possua">
            </div>
            <div class="form-group">
                <label for="enterApelido">Apelido: </label>
                <input type="text" class="form-control" id="apelido" name="apelido" placeholder="Digite o seu apelido">
            </div>
            <div class="form-group">
                <label for="enterCPF">CPF: </label>
                <input  required type="text" class="form-control" id="cpf" name="cpf" placeholder="Digite o seu CPF" onkeypress="$(this).mask('000.000.000-00')">
            </div>
            <div class="form-group">
                <label for="enterEmail">E-mail: </label>
                <input  required type="email" class="form-control" id="email" name="email" placeholder="Digite o seu email">
            </div>
            <div class="form-group">
                <label for="enterdataNascimento">Data de nascimento: </label>
                <input type="date" class="form-control" id="dataNascimento" name="dataNascimento">
            </div>
            <div class="form-group">
                <label for="enterSexo">Selecione o seu sexo: </label>
                <select class="form-control" id="sexo" name="sexo">
                  <option selected='select'>Feminino</option>
                  <option>Masculino</option>
                  <option>Outros</option>
                </select>
            </div>
            <div class="form-group">
                <label for="enterTelefone">Digite o seu telefone: </label>
                <input type="text" class="form-control" id="telefone" name="telefone" onkeypress="$(this).mask('(00)00000-0000')">
            </div>
            <button type="submit" class="btn btn-primary" value="Salvar">Enviar</button>

        </form>
   
    </div>


    <!-- FIM DO FOMULÁRIO-->

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

</body>

</html>