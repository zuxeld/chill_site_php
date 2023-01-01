<?php
$server = "127.0.0.1";
$login = "root";
$pass = "root";
$name_db = "kurs2";

$link = mysqli_connect($server, $login, $pass, $name_db);

if ($link == False)
{
	echo "Соединение не удалось";
}
?>