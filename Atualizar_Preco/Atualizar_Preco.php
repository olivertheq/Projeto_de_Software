<?php
	
	session_start();
	include_once("conexao.php");
	$result_gasolina = "SELECT * FROM tbl_precos WHERE COD_COMBUSTIVEL = '1'";
	$resultado_gasolina = mysqli_query($conn, $result_gasolina);
	$row_gasolina = mysqli_fetch_assoc($resultado_gasolina);

	$result_etanol = "SELECT * FROM tbl_precos WHERE COD_COMBUSTIVEL = '2'";
	$resultado_etanol = mysqli_query($conn, $result_etanol);
	$row_etanol = mysqli_fetch_assoc($resultado_etanol);

	$result_disel = "SELECT * FROM tbl_precos WHERE COD_COMBUSTIVEL = '3'";
	$resultado_disel = mysqli_query($conn, $result_disel);
	$row_disel = mysqli_fetch_assoc($resultado_disel);

	$result_diselS10 = "SELECT * FROM tbl_precos WHERE COD_COMBUSTIVEL = '4'";
	$resultado_diselS10 = mysqli_query($conn, $result_diselS10);
	$row_diselS10 = mysqli_fetch_assoc($resultado_diselS10);

	$result_combustivelE = "SELECT * FROM tbl_precos WHERE COD_COMBUSTIVEL = '5'";
	$resultado_combustivelE = mysqli_query($conn, $result_combustivelE);
	$row_combustivelE = mysqli_fetch_assoc($resultado_combustivelE);

?>

<html lang="pt-br">
<head>
	<meta charset="utf-8"/>
	<title>Atualizar Preço</title>
	<link rel="stylesheet" type="text/css" href="Estilo_Atualizar_Preco.css">
</head>
<body>
<div id="corpo-form" align="left">
	<form method="POST" action="Processa_Atualizar_Preco.php" name="atualizar_preco">
		<br><br><h1 id="h" align="center">ATUALIZAR PREÇO</h1><br><br>


		<p>Gasolina</p><input type="number" id="gasolina" placeholder="Nenhum Preço" name="gasolina"  
		value="<?php echo $row_gasolina['PRECO'];?>"/>
		<p>Etanol</p><input type="number" placeholder="Nenhum Preço" name="etanol"  
		value="<?php echo  $row_etanol['PRECO'];?>"/>
		<p>Diesel Comum</p><input type="number" placeholder="Nenhum Preço" name="disel" 
		value="<?php echo  $row_disel['PRECO'];?>"/>
		<p>Diesel S-10</p><input type="number" placeholder="Nenhum Preço" name="disel2" 
		value="<?php echo  $row_diselS10['PRECO'];?>"/>
		<p>Combustivel Especial*</p><input type="number" placeholder="Nenhum Preço" name="combustivelE" value="<?php echo  $row_combustivelE['PRECO'];?>"/><br><br>


/////////////////////////		
<p>Novo Preco</p>
		<input type="number" id="gasolina" placeholder="Nenhum Preço" name="novovalor"  
		value="<?php echo $row_gasolina['PRECO'];?>"/>

<p>Tipo Combustivel</p>		
		<input list="tipos" name="opcao"/>
<datalist id="tipos">
  <option value="Gasolina">
  <option value="Etanol">
  <option value="Disel">
  <option value="Disel2">
  <option value="Combustivel E.">
</datalist>
/////////////////////////////////

	
	</form>
	</div>

	<div id="corpo-form" align="left">
	
		<br><br><br><br><br><br>

		<p>Gasolina</p><input type="text" placeholder="Nenhum Preço"  
		value="<?php echo date('d/m/Y   -   h:i:s A', strtotime($row_gasolina['DATA_ATT'])); ?>"/>
		<p>Etanol</p><input type="text" placeholder="Nenhum Preço"  
		value="<?php echo date('d/m/Y   -   h:i:s A', strtotime($row_etanol['DATA_ATT'])); ?>"/>
		<p>Diesel Comum</p><input type="text" placeholder="Nenhum Preço"   
		value="<?php echo date('d/m/Y   -   h:i:s A', strtotime($row_disel['DATA_ATT'])); ?>"/>
		<p>Diesel S-10</p><input type="text" placeholder="Nenhum Preço"   
		value="<?php echo date('d/m/Y   -   h:i:s A', strtotime($row_diselS10['DATA_ATT'])); ?>"/>
		<p>Combustivel E.</p><input type="text" placeholder="Nenhum Preço"   
		value="<?php echo date('d/m/Y   -   h:i:s A', strtotime($row_combustivelE['DATA_ATT'])); ?>"/>
		<br><br><br>

		<input type="button" value="Salvar Alterações" onclick="funcao_salvar()"/>
		<input type="button" value="Voltar" onclick="funcao_sair()"/>


	</form>
	</div>
	<script  type="text/javascript">
	function funcao_salvar(){

		document.atualizar_preco.submit();	
	
	}
			
	function funcao_sair(){

		alert("sair");
	}

	

</script>		
	
<script src="./script/jquery-3.4.1.slim.min.js" type="text/javascript"></script>
<script type="text/javascript">
	
</script>


</body>
</html>