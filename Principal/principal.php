<?php

// Por Enquanto nao tem nada pronto, pois sera implementado depois

session_start();
if (isset($_SESSION['retorno_login'])) {
echo $_SESSION['retorno_login'];
unset($_SESSION['retorno_login']);
}

?>