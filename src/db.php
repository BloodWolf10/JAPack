<?php

$servername = "mariadb";
$username = getenv('MYSQL_USER');
$password = getenv('MYSQL_PASSWORD');
$database = getenv('MYSQL_DATABASE');


try {
    $pdo = new PDO("mysql:host=$servername;dbname=$database",$username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo"<h1>Connected sucessfully!</h1>";

} catch (PDOException $e) { 

    echo "Connection failed: " .  $e->getMessage();

}
