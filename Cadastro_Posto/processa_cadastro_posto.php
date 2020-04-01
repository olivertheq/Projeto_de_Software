<?php
session_start();
include_once("../Banco/conexao.php");
/*

 Filtrar as variaveis para caber os campos do banco
*/
$bandeira_posto = filter_input(INPUT_POST, 'BANDEIRA', FILTER_SANITIZE_STRING);
$nome_posto = filter_input(INPUT_POST, 'NOME_POSTO', FILTER_SANITIZE_STRING);
$cnpj_posto = filter_input(INPUT_POST, 'CNPJ', FILTER_SANITIZE_NUMBER_INT);
$num_posto = filter_input(INPUT_POST, 'NUM_POSTO', FILTER_SANITIZE_NUMBER_INT);
$email_posto = filter_input(INPUT_POST, 'EMAIL_POSTO', FILTER_SANITIZE_STRING);
$senha_posto = filter_input(INPUT_POST, 'SENHA', FILTER_SANITIZE_STRING);
$cep_posto = filter_input(INPUT_POST, 'CEP_POSTO', FILTER_SANITIZE_NUMBER_INT);
$estado_posto = filter_input(INPUT_POST, 'COD_ESTADO', FILTER_SANITIZE_NUMBER_INT);
$cidade_posto = filter_input(INPUT_POST, 'COD_CIDADE', FILTER_SANITIZE_NUMBER_INT);
$bairro_posto = filter_input(INPUT_POST, 'COD_BAIRRO', FILTER_SANITIZE_NUMBER_INT);
$rua_posto = filter_input(INPUT_POST, 'COD_RUA', FILTER_SANITIZE_NUMBER_INT);
$numero_posto = filter_input(INPUT_POST, 'NUM_POSTO', FILTER_SANITIZE_NUMBER_INT);

$bandeira_posto = $_POST['bandeira'];
$nome_posto = $_POST['nome'];
$cnpj_posto = $_POST['cnpj'];
$num_posto = $_POST['num'];
$email_posto = $_POST['email'];
$cep_posto = $_POST['cep'];
$estado_posto = $_POST['estado'];
$cidade_posto = $_POST['cidade'];
$bairro_posto = $_POST['bairro'];
$rua_posto = $_POST['rua'];
$senha_posto = $_POST['senha'];


// Inserir Valores no banco de dados
$result_cad_posto = ("INSERT INTO tbl_posto (COD_POSTO, COD_TIPO_USUARIO, 
BANDEIRA, CEP, CNPJ, COD_BAIRRO, 
COD_CIDADE, COD_ESTADO,  COD_RUA, NOME_POSTO, NUM_POSTO, SENHA, EMAIL) 

VALUES (default, '1' ,'$bandeira_posto', '$cep_posto', '$cnpj_posto', '$bairro_posto', 
'$cidade_posto', '$estado_posto',  '$rua_posto', '$nome_posto', 
'$num_posto', '$senha_posto', '$email_posto' )");

$resultado_cad_posto = mysqli_query($conn, $result_cad_posto);

$ultimo_id = mysqli_insert_id($conn);



// Retornando para variavel de seção

if(mysqli_insert_id($conn)){
	$_SESSION['msg'] = "Usuário cadastrado com sucesso!";
	$_SESSION['login'] = "Usuário = $ultimo_id";
	$_SESSION['senha']= "Senha = $senha_posto";
	header("Location: ../Login/login.php");
}else{
	$_SESSION['msg'] = "Usuário não foi cadastrado com sucesso!";
	header("Location: cadastro_posto.php");
}
