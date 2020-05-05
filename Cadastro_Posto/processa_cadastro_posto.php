<?php
session_start();
include_once("../Banco/conexao.php");

//este codigo aqui é referente ao cadastro da imagem do posto!
$img1 = '';

if(empty($_FILES['img1']['name'])){
	//echo("não foi selecionada nenhuma imagem!");
}else{
	$extensao = strtolower(substr($_FILES['img1']['name'], -4)); //capturando a extensao
	$novo_nome = md5(time()) . $extensao;// gerando novo nome de arquivo e concatenando com extensao
	$img1 = $novo_nome; // novo nome do arquivo que sera usado no diretorio
    $diretorio = "./upload/"; //diretorio dos arquivos
	move_uploaded_file($_FILES['img1']['tmp_name'], $diretorio.$novo_nome); //movendo arquivos para diretorio upload
	
    //$sql_code = "insert into tbl_posto (img-posto) values ('$novo_nome')"; // gravando no banco o nome do arquivo
    //$executando = mysqli_query($conn, $sql_code); //ava

	
}

//sleep(3);//dormir :)




/*

 Filtrar as variaveis para caber os campos do banco
*/
/*
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
*/

$bandeira_posto = $_POST['bandeira'];
$nome_posto = $_POST['nome'];
$cnpj_posto = $_POST['cnpj'];
$num_posto = $_POST['num'];
$email_posto = $_POST['email'];
$cep_posto = $_POST['cep'];
$numero_posto = $_POST['num'];

//campos de endereço
$estado_posto = $_POST['estado'];
$cidade_posto = $_POST['cidade'];
$bairro_posto = $_POST['bairro'];
$rua_posto = $_POST['rua'];
//campos de endereço

$senha_posto = $_POST['senha'];


//codigos que serao inseridos na tabela para referenciar os valores nas tabelas de estado cidade bairro rua :)
$cod_estado = 0;
$cod_cidade = 0;
$cod_bairro = 0;
$cod_rua = 0;



$state = 0;//isto é para depurar o script caso falhe sabeerrei em qual 'state' falhou :)

	if(isset($bandeira_posto) && isset($nome_posto) && isset($cnpj_posto) && isset($num_posto) && isset($email_posto) 
	    && isset($senha_posto) && isset($cep_posto) && isset($estado_posto) && isset($cidade_posto) && isset($bairro_posto) && isset($rua_posto) &&
	    isset($numero_posto)) {
   		//parte do estado -- estou supondo que teremos no banco de dados todas as cidades ddo brasil cadastradas
    	$query_estados = mysqli_query($conn, "SELECT COD_ESTADO FROM tbl_estados WHERE SIGLA = '$estado_posto'");
    	$informacoes_estados = mysqli_fetch_assoc($query_estados);
    	$cod_estado = $informacoes_estados['COD_ESTADO'];

   		//parte das cidades -- estou supondo que teremos no banco de dados todas as cidades ddo brasil cadastradas
    	$query_cidades = mysqli_query($conn, "SELECT COD_CIDADE FROM tbl_cidades WHERE NOME_CIDADE = '$cidade_posto'");
    	$informacoes_cidades = mysqli_fetch_assoc($query_cidades);
    	$cod_cidade = $informacoes_cidades['COD_CIDADE'];
       	//para visualizar to o array echo implode(" ",$informacoes_cidades);


    	//bairros
    	$query_bairros = mysqli_query($conn, "SELECT COD_BAIRRO FROM tbl_bairros WHERE NOME_BAIRRO = '$bairro_posto'");
    	$informacoes_bairros = mysqli_fetch_assoc($query_bairros);
    
    	//echo($informacoes_bairros['COD_BAIRRO']);
    	if($informacoes_bairros['COD_BAIRRO'] == null){
        	echo("nao existe esse bairro na tabela<br>");
			//echo json_encode(array('message' => 'Nao existe este bairro na tabela',));
			$state = '3';
			echo("não existe este bairro na tabela");
			if($validaInsert = mysqli_query($conn, "INSERT INTO tbl_bairros (NOME_BAIRRO) VALUES ('$bairro_posto')")){

				echo("gravado com sucesso o novo bairro<br>");
				//echo json_encode(array('message' => 'Gravado com sucesso o novo bairro',));
				$state = '4';
				$query_bairros = mysqli_query($conn, "SELECT COD_BAIRRO FROM tbl_bairros WHERE NOME_BAIRRO = '$bairro_posto'");
				$informacoes_bairros = mysqli_fetch_assoc($query_bairros);
				$cod_bairro = $informacoes_bairros['COD_BAIRRO'];
			}else{
				echo("falha na gravacao do bairro<br>");
				//echo json_encode(array('message' => 'Falha na grava��o do bairro',));
				$state = '5';
			}

    	}else{
			echo("existe este bairro<br>");
			//echo json_encode(array('message' => 'Existe este bairro',));
			$state = '6';
			$cod_bairro = $informacoes_bairros['COD_BAIRRO'];
    	}

    	//ruas
    	$query_ruas = mysqli_query($conn, "SELECT COD_RUA FROM tbl_ruas WHERE NOME_RUA = '$rua_posto'");
    	$informacoes_ruas = mysqli_fetch_assoc($query_ruas);

    	if($informacoes_ruas['COD_RUA'] == null){
			echo("nao existe essa rua na tabela<br>");
			//echo json_encode(array('message' => 'Não existe essa rua na tabela',));
			$state = '7';
			if($validaInsert = mysqli_query($conn, "INSERT INTO tbl_ruas (NOME_RUA) VALUES ('$rua_posto')")){
				echo("gravado com sucesso a nova rua no banco<br>");
				//echo json_encode(array('message' => 'Gravado com sucesso a nova rua no banco',));
				$state = '8';
				$query_ruas = mysqli_query($conn, "SELECT COD_RUA FROM tbl_ruas WHERE NOME_RUA = '$rua_posto'");
				$informacoes_ruas = mysqli_fetch_assoc($query_ruas);
				$cod_rua = $informacoes_ruas['COD_RUA'];

			}else{
				echo("falha na gravacao da nova rua no banco<br>");
				//echo json_encode(array('message' => 'Falha na gravação da nova rua',));
				$state = '9';
			}
		

    	}else{
			echo("existe esta rua<br>");
			//echo json_encode(array('message' => 'Existe essa tabela',));
			$state = '10';
			$cod_rua = $informacoes_ruas['COD_RUA'];
    	}


    	//verificar se posto já existe no banco de dados
    	$verificarExistePosto = mysqli_query($conn, "SELECT CNPJ, TELEFONE FROM tbl_posto WHERE CNPJ = '$cnpj_posto' OR TELEFONE = '$num_posto'");
    	if(mysqli_num_rows($verificarExistePosto) != 0){
			//echo json_encode(array('message' => 'ERRO: Posto já existente no banco de dado',));
			echo("posto ja existe no banco de dados");
			$state = '11';
		}else{
			//finalmente gravar novo posto no banco de dados! (tbl_posto)
			
			//echo($bandeira_posto);echo($cep_posto);echo($cnpj_posto);
			echo($cod_bairro);echo($cod_cidade);echo($cod_estado);
			echo($cod_rua);
			//echo($nome_posto);echo($num_posto);echo($senha_posto);echo($email_posto);echo($img1);
					
			$vish = "INSERT INTO `tbl_posto`(`NOME_POSTO`, `COD_TIPO_USUARIO`, `SENHA`, `CNPJ`, `BANDEIRA`, `CEP`, `COD_ESTADO`, `COD_CIDADE`, `COD_BAIRRO`, `COD_RUA`, `NUM_POSTO`, `TELEFONE`, `EMAIL`, `img1`) VALUES ('$nome_posto', 3, '$senha_posto', '$cnpj_posto', '$bandeira_posto', '$cep_posto', '$cod_estado', '$cod_cidade', '$cod_bairro', '$cod_rua', '$num_posto', '$numero_posto', '$email_posto', '$img1')";
        
        	if($rell = mysqli_query($conn, $vish)){
				$_SESSION['msg'] = "POSTO CADASTRADO COM sucesso!";// ? usuario ? aqui n deveria ser posto cadastrado com sucesso?
				header("Location: ../Login/login.php");
				$state = '12';
				//echo json_encode(array('message' => 'gravado com sucesso novo posto !!',));
				//echo json_encode(array('message' => '$state',));
        	}else{
				//echo json_encode(array('message' => 'falha na gravacao do novo posto',));
				echo("nao deu erto");
				$_SESSION['msg'] = "POSTO não foi cadastrado com sucesso!";// denovo usuario
				header("Location: cadastro_posto.php"); // aqui esta correto
				$state = '13';
			}
			
		}

	

	}
	else
	{
		$state = '14';
		echo("variaveis não inicializadas");
    }






//$ultimo_id = mysqli_insert_id($conn);
// Retornando para variavel de seção   //essa parte aqui ta meio sem fazer sentido
/*
if(mysqli_insert_id($conn)){
	$_SESSION['msg'] = "POSTO CADASTRADO COM sucesso!";// ? usuario ? aqui n deveria ser posto cadastrado com sucesso?
	header("Location: ../Login/login.php");// ok cadastrou e foi para tela de login do usuario posto
}else{
	$_SESSION['msg'] = "POSTO não foi cadastrado com sucesso!";// denovo usuario
	header("Location: cadastro_posto.php"); // aqui esta correto
}
*/
