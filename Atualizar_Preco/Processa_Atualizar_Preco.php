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


$gasolina = filter_input(INPUT_POST, 'gasolina', FILTER_SANITIZE_STRING);
$etanol = filter_input(INPUT_POST, 'etanol', FILTER_SANITIZE_STRING);
$diselS10 = filter_input(INPUT_POST, 'disel2', FILTER_SANITIZE_STRING);
$disel = filter_input(INPUT_POST, 'disel', FILTER_SANITIZE_STRING);
$combustivelE = filter_input(INPUT_POST, 'combustivelE', FILTER_SANITIZE_STRING);

$novopreco = filter_input(INPUT_POST, 'novovalor', FILTER_SANITIZE_STRING);
$novocombustivel = filter_input(INPUT_POST , 'opcao', FILTER_SANITIZE_STRING);

/*
echo $novocombustivel."<br>";
echo $novopreco;
*/
switch ($novocombustivel){
    case "Gasolina":
        if ($row_gasolina['PRECO'] != $gasolina){
            $result_preco = "UPDATE tbl_precos SET PRECO ='$novopreco', DATA_ATT =(now())
             WHERE COD_COMBUSTIVEL =1";
            $resultado_preco = mysqli_query($conn, $result_preco);
                
            }
            echo $row_gasolina['PRECO']."<br>".$gasolina;
    break;

    case "Etanol":
        echo "Teste Etanol";
    break;
}

/*


if ($row_etanol['PRECO'] != $etanol){
    $result_precoE = "UPDATE tbl_precos SET PRECO ='$etanol', DATA_ATT =(now())
    WHERE COD_COMBUSTIVEL =2";
   $resultado_precoE = mysqli_query($conn, $result_precoE);   
}


$result_precoD = "UPDATE tbl_precos SET PRECO ='$disel', DATA_ATT =(now())
 WHERE COD_COMBUSTIVEL =3";
$resultado_precoD = mysqli_query($conn, $result_precoD);

$result_precoD10 = "UPDATE tbl_precos SET PRECO ='$diselS10', DATA_ATT =(now())
 WHERE COD_COMBUSTIVEL =4";
$resultado_precoD10 = mysqli_query($conn, $result_precoD10);

$result_precoCE = "UPDATE tbl_precos SET PRECO ='$combustivelE', DATA_ATT =(now())
 WHERE COD_COMBUSTIVEL =5";
$resultado_precoCE = mysqli_query($conn, $result_precoCE);
*/





/*
if (mysqli_affected_rows($conn)){
    echo "Editado com sucesso";
}else{
    echo "Nao editado";
}
*/

?>


