
<?php
    //Testando o gitub
	//iniciando a sessao para retornar mensagens
	session_start();
?>
<html lang="pt-br">
<head>
	<meta charset="utf-8"/>
	<title>CADASTRO POSTO</title>
	<link rel="stylesheet" type="text/css" href="estilo_cadastro_posto.css">
</head>
<body>

<!-- Mensagem de nao cadastro -->

<?php if (isset($_SESSION['msg'])) { ?>
    <script>alert('<?= $_SESSION['msg'] ?>');</script>
<?php } unset($_SESSION['msg']);?>

<!-- Formularios de Cadastro -->
	<div class="formularios">

		<div class="col1">
			<div id="corpo-form" align="center">
			<h1 id="h" align="center">CADASTRO DO POSTO</h1>
			<div id="a">
				<form method="POST" action="processa_cadastro_posto.php" name="form_cadastro_posto">
				<input type="text" placeholder="Bandeira Posto" name="bandeira" maxlength="30" />
				<input type="text" placeholder="Nome" name="nome" maxlength="30" />
				<input type="text" placeholder="CNPJ" name="cnpj" maxlength="14" />
				<input type="text" placeholder="Numero Celular" name="numero" maxlength="11" />
				<!--<input type="text" placeholder="Usuario" name="usuario" maxlength="20" />-->
				<input type="Email" placeholder="Email" name="email" maxlength="40" />
				<input type="Password" placeholder="Senha" name="senha" maxlength="30" id="senha" />
				<input type="Password" placeholder="Confirmar Senha" name="senhaconfirm" maxlength="30" id="senhaconfirm"/>
				</div>
        </div>
		</div>

	<div class="col2">		
            <div id="corpo-form2" align="center">
		    <h1 id="h" align="center">LOCAL</h1>
			<div id="b">
				<input id="L" type="text" placeholder="CEP" name="cep"/>
				<input id="L" type="text" placeholder="Estado" name="estado"/>
				<input id="L" type="text" placeholder="Cidade" name="cidade"/>
				<input id="L" type="text" placeholder="Bairro" name="bairro"/>
				<input id="L" type="text" placeholder="Rua" name="rua"/>
				<input id="L" type="text" placeholder="Num" name="num"/>
				<input type="button" value="Cadastrar" onclick="funcao_senha()"/>
				<a href="../Login/login.php">Já se cadastrou? <strong>Logar</strong></a>
				</div>
				

</div>
</div>
			</form>
		
<!-- Confere se as senhas sao iguais e emite mensagem de erro ou não
	 Tambem confere se os campos estao preenchidos -->
<script  type="text/javascript">
	function funcao_senha(){

		if (form_cadastro_posto.bandeira.value == ""){
			alert("Favor preencher o campo bandeira");
		}
		else if (form_cadastro_posto.nome.value == ""){
			alert("Favor preencher o campo nome");
		}
		else if (form_cadastro_posto.cnpj.value == ""){
			alert("Favor preencher o campo cnpj");
		}
		else if (form_cadastro_posto.numero.value == ""){
			alert("Favor preencher o campo numero do celular");
		}
		else if (form_cadastro_posto.email.value == ""){
			alert("Favor preencher o campo email");
		}
		else if (form_cadastro_posto.cep.value == ""){
			alert("Favor preencher o campo cep");
		}
		else if (form_cadastro_posto.estado.value == ""){
			alert("Favor preencher o campo estado");
		}
		else if (form_cadastro_posto.cidade.value == ""){
			alert("Favor preencher o campo cidade");
		}
		else if (form_cadastro_posto.bairro.value == ""){
			alert("Favor preencher o campo bairro");
		}
		else if (form_cadastro_posto.rua.value == ""){
			alert("Favor preencher o campo rua");
		}
		else if (form_cadastro_posto.num.value == ""){
			alert("Favor preencher o campo num");
		}
		else if (form_cadastro_posto.senha.value != form_cadastro_posto.senhaconfirm.value){
			alert("As senhas digitadas são diferentes");
		}	
		else if ( form_cadastro_posto.senha.value == form_cadastro_posto.senhaconfirm.value && form_cadastro_posto.senha.value == "") {
			alert("As senhas estao vazias ");	
		}else{
			document.form_cadastro_posto.submit();	
		}
		
	}				
</script>		





	
<script src="./jquery-3.4.1.slim.min" type="text/javascript"></script>
<script type="text/javascript">
	
</script>


</body>
</html>
