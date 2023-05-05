<?php
//1- app\Libraries -> composer init

// google
//1- composer require google/apiclient:^2.12.1

// facebook
//1- composer require facebook/graph-sdk

// dompdf
//1- composer require dompdf/dompdf 

// Xlsx
//1- composer require phpoffice/phpspreadsheet 

//phpdotenv
//1- composer require vlucas/phpdotenv

require  __DIR__."/libraries/vendor/autoload.php";
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();


$google_client = new \Google_Client();
$google_client->setClientId("405380673874-cbp1ep7r2otbtrt75cu4chs4ug9hk6e4.apps.googleusercontent.com");
$google_client->setClientSecret("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");
$google_client->setRedirectUri('https://localhost/codeIgniter/php-core/login-with-google.php');
$google_client->addScope('email');
$google_client->addScope('profile');
$google_loginbutton = $google_client->createAuthUrl();


$facebook = new \Facebook\Facebook(
    array(
        "app_id" => "1589430858170618",
        "app_secret" => "d621b2eb8bbc8d0da6567bbc1a560398",
        "default_graph_version" => "v2.3"
    )
);
$facebook_helper = $facebook->getRedirectLoginHelper();
$fbloginbutton = $facebook_helper->getLoginUrl('https://localhost/codeIgniter/php-core/login-with-facebook.php', array("email"));

session_start();
$connect = new mysqli($_ENV['HOST'], $_ENV['BD_USER_NAME'], $_ENV['BD_PASSWORD'], $_ENV['BD_NAME']);
if ($connect->connect_errno) {
    echo "Failed to connect to MySQL: " . $connect->connect_error;
    exit();
}

