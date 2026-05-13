<?php

session_start();

require_once "conexao.php";


$erro = "";
$sucesso = "";
$editando = NULL;
    //Receber os dados do formulário
if ($_SERVER["REQUEST_METHOD"] === "POST") {

   
    $email = $_POST["email"];
    // $senha = $_POST["senha"];

    if(!empty($_POST['SendRecuperarSenha'])){    
    $sql = "SELECT id, email, senha 
        FROM usuario
        WHERE email ='$email'";
    //Preparar a query
    $result_usuario = mysqli_query($conexao, $sql);
      
    
    //Se o usuário foi achado, entra no IF
    if(($result_usuario) and (mysqli_num_rows($result_usuario) !=0)){
        $row = mysqli_fetch_assoc($result_usuario);
        $sucesso = "Deu certo";
    }else{
        $erro = "Erro: Usuário não encontrado";
    }
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Recuperar a senha</title>
    </head>

    <body>

    </body>

    <h1>Recuperar Senha</h1>

    


    <form method="POST" action="">
    <label>E-mail</label>
    <input type="text" name="email" placeholder="Digite o usuário"><br><br>

    <input type="submit" name="SendRecuperarSenha" value="Recuperar"> 
    </form>

    Lembrou a senha? <a href="login.php">clique aqui</a>para logar
</html>