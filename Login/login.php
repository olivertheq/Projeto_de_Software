
<?php
	//iniciando a seção para retornar mensagens
	session_start();
?>

<html lang="pt-br">
<head>
	<meta charset="utf-8"/>
	<title>LOGIN POSTO</title>
	<link rel="stylesheet" type="text/css" href="estilo_login.css">
</head>
<body>




<!-- Verificando se as variaveis de seção estão preenchidas, 
escrevendo elas e depois apagando as informações dela -->
<?php if (isset($_SESSION['msg'])) { ?>
    <script>alert('<?= $_SESSION['msg'] ?>');</script>
<?php } unset($_SESSION['msg']);?>

<?php if (isset($_SESSION['login'])) { ?>
    <script>alert("<?= $_SESSION['login']; ?>\n<?= $_SESSION['senha']?>");</script>
<?php } unset($_SESSION['login']);unset($_SESSION['senha'])?>
	
<?php 
	if (isset($_SESSION['retorno_login']) and $_SESSION['retorno_login'] !=  "Usuario encontrado!"){ ?>
    <script>alert('<?= $_SESSION['retorno_login'] ?>');</script>

<?php } unset($_SESSION['retorno_login']);?>	
	
<!-- Formulario de Login -->
<div id="corpo-form">
	<h1 align="center"><br>Entrar</br></h1>
	 <br><form method="POST" action="processa_login.php" name="form_login">
		<input type="text" placeholder="Usuário" name="usuario" id="usuario"/>
		<input type="password" placeholder="Senha" name="senha" id="senha"/>
		<input type="button" value="ACESSAR" onclick="funcao_alerta()" />
		<a href="../Cadastro_posto/cadastro_posto.php">Não se cadastrou? <strong>Cadastre-se</strong></a>
	</form></br>
</div>
</body>

<!-- Script para alertar a respeito de campos vazios -->
<script>
	function funcao_alerta(){
		var usuario = document.getElementById("usuario").value;
		var senha = document.getElementById("senha").value;
		if (usuario != null && usuario != ""){
			if(senha != null && senha!= ""){
				document.form_login.submit();
			}else{
				alert("Favor preencher a senha");
			
			}
			
		}else if(senha != null && senha!= ""){
			alert("Favor preencher o usuario");
		
		}else if(senha != null && senha == ""){
			alert("Favor preencher os campos");
			
		}else{
			document.form_login.submit();
		}
	}
  </script>


<!-- Script relacionado com o stilo css -->
<script src="./script/jquery-3.4.1.slim.min.js" type="text/javascript"></script>
<script>
	var a = screen.width;
	var b = screen.height;

// Pega o elemento
	var pegaObj = $('body');
// Aplicar o estilo ao elemento pego pelo jQuery 
	pegaObj.css({"height":b, "width":a})
</script>
</html>