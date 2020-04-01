<html>
<head>
<title>Enviar dados de campo texto</title>
</head>
<body>
	<?php
echo"<h2><p>CADASTRO POSTO<br>";

	echo"<h2><p>Bandeira Posto:".$_POST['bandeira'];
	echo"<h2><p>nome:".$_POST['nome'];
	echo"<h2><p>cnpj:".$_POST['cnpj'];
	echo"<h2><p>numero:".$_POST['numero'];
	echo"<h2><p>Usuario:".$_POST['usuario'];
	echo"<h2><p>email:".$_POST['email'];
	echo"<h2><p>senha:".$_POST['senha'];

	echo"<h2><p>LOCAL<br>";

	echo"<h2><p>Cep:".$_POST['cep'];
	echo"<h2><p>Estado:".$_POST['estado'];
	echo"<h2><p>Cidade:".$_POST['cidade'];
	echo"<h2><p>Bairro:".$_POST['bairro'];
	echo"<h2><p>Rua:".$_POST['rua'];
	echo"<h2><p>Num:".$_POST['num'];

	echo"<h2><p>COMBUSTIVEIS<br>";
	
	$nome= $_POST['nome'];
	$tipo1= $_POST['tipo1'];
	$tipo2= $_POST['tipo2'];
	$tipo3= $_POST['tipo3'];
	$tipo4= $_POST['tipo4'];
	$tipo5= $_POST['tipo5'];
    echo"<h2><p>TIPO1:".$_POST["tipo1"];
	echo"<h2><p>TIPO2:".$_POST["tipo2"];
	echo"<h2><p>TIPO3:".$_POST["tipo3"];
	echo"<h2><p>TIPO4:".$_POST["tipo4"];
	echo"<h2><p>TIPO5:".$_POST["tipo5"];
	?>
</body>
</html>