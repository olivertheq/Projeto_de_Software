<html lang="pt-br">
<head>
	<meta charset="utf-8"/>
	<title>CADASTRO POSTO</title>
	<link rel="stylesheet" type="text/css" href="estilo_atualizarp.css">
</head>
<body>
<div id="corpo-form" align="left">
	<form method="POST" action="processa2.php">
		<h1 id="h" align="left">ATUALIZAR PREÇO</h1>

		<p>Gasolina</p><input type="number" placeholder="Nenhum Preço" name="gasulina"/>
		<p>Etanol</p><input type="text" placeholder="Nenhum Preço" name="etanol"/>
		<p>Diesel Comum</p><input type="text" placeholder="Nenhum Preço" name="disel"/>
		<p>Diesel S-10</p><input type="text" placeholder="Nenhum Preço" name="disel2"/>
		<p>Combustivel Especial* <a href="atualizarp2.php">✏️EDITAR</a></p><input placeholder="Nenhum Preço" type="text"name="ce"/>
		<input type="submit" value="ATUALIZAR" />

	</form>
	</div>
</body>
</html>