
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
				<form method="POST" action="processa_cadastro_posto.php" name="form_cadastro_posto" enctype='multipart/form-data' autocomplete="off">
				<input type="text" placeholder="Bandeira Posto" name="bandeira" maxlength="30" />
				<input type="text" placeholder="Nome" name="nome" maxlength="30" />
				<input type="text" placeholder="CNPJ" name="cnpj" maxlength="14" />
				<input type="text" placeholder="Numero Celular" name="numero" maxlength="11" />
				<!--<input type="text" placeholder="Usuario" name="usuario" maxlength="20" />-->
				<input type="Email" placeholder="Email" name="email" maxlength="40" />
				<input type="Password" placeholder="Senha" name="senha" maxlength="30" id="senha" />
				<input type="Password" placeholder="Confirmar Senha" name="senhaconfirm" maxlength="30" id="senhaconfirm"/>
				<input type='file' name='img1' id='img1' size='80' /><br>	
			</div>
        </div>
		</div>

	<div class="col2">		
            <div id="corpo-form2" align="center">
		    <h1 id="h" align="center">LOCAL</h1>
			<div id="b">
				<input id="cep" type="text" placeholder="CEP" name="cep"/>
				<input id="estado" type="text" placeholder="Estado" name="estado"/>
				<input id="cidade" type="text" placeholder="Cidade" name="cidade"/>
				<input id="bairro" type="text" placeholder="Bairro" name="bairro"/>
				<input id="rua" type="text" placeholder="Rua" name="rua"/>
				<input id="num" type="text" placeholder="Num" name="num"/>
				
				<input type="button" value="Cadastrar" onclick="funcao_senha()"/>
				<a href="../Login/login.php">Já se cadastrou? <strong>Logar</strong></a>
				</div>
				

</div>
</div>
			</form>
		
<!-- Confere se as senhas sao iguais e emite mensagem de erro ou não
	 Tambem confere se os campos estao preenchidos -->

		





	


!este estilo esta aqui porque os componentes input estao herdando css de borda, e eu não queria borda quando escrevi isso aqui :)
<style>
	#img1{
		border: none;
	}

</style>


</body>

<script src="./jquery-3.5.0.min.js" type="text/javascript"></script>


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

<script>
	//adicionando o preenchimento automatico de endereço com base no servico viacep
		//
		
		$('#cep').keyup(function(){

			var cep = $(this).val();
			if(cep.length == 8){
				//alert(cep);
				pesquisacep(cep);
			}
			
			//Aqui dentro você faz o que quer, manda pra um arquivo php com ajax
			//ou sla, vai depender do que você quer fazer

		});
		

	
</script>

<script type="text/javascript" >
    
    function limpa_formulário_cep() {
            //Limpa valores do formulário de cep.
            document.getElementById('estado').value=("");
            document.getElementById('bairro').value=("");
            document.getElementById('cidade').value=("");
            document.getElementById('rua').value=("");
    }

    function meu_callback(conteudo) {
        if (!("erro" in conteudo)) {
            //Atualiza os campos com os valores.
            document.getElementById('bairro').value=(conteudo.bairro);
            document.getElementById('cidade').value=(conteudo.localidade);
            document.getElementById('estado').value=(conteudo.uf);
            document.getElementById('rua').value=(conteudo.logradouro);
        } //end if.
        else {
            //CEP não Encontrado.
            limpa_formulário_cep();
            alert("CEP não encontrado.");
        }
    }
        
    function pesquisacep(valor) {

        //Nova variável "cep" somente com dígitos.
        var cep = valor.replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById('estado').value="...";
                document.getElementById('bairro').value="...";
                document.getElementById('cidade').value="...";
                document.getElementById('rua').value="...";

                //Cria um elemento javascript.
                var script = document.createElement('script');

                //Sincroniza com o callback.
                script.src = 'https://viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

                //Insere script no documento e carrega o conteúdo.
                document.body.appendChild(script);

            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    };

    </script>
</html>
