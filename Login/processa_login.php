
<?php
session_start();
include_once("../Banco/conexao.php");


    
    $usuario = $_POST['usuario'];
    $senha = $_POST['senha'];

    //Pesquisando no Banco se os valores dos campos existem
    $query_login = ("select COD_POSTO, SENHA from tbl_posto where COD_POSTO = '{$usuario}' and senha = '{$senha}'");
    $result_login = mysqli_query($conn, $query_login);
    $row = mysqli_num_rows($result_login);


    //Retornando se existe ou não
    if ($row == 1){
        $_SESSION['retorno_login'] = "Usuario encontrado!"; 
        header('location: ../Principal/principal.php');
        exit();
    }

    else if ($_POST['senha'] != "" and $_POST['usuario'] != "" ){
        $_SESSION['retorno_login'] = "Usuario nao encontrado!"; 
        header('location: login.php');
        exit();
    }
    else{
        header('location: login.php');
    }

?>




</body>
</html>