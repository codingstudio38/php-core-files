<?php
require "dbconnect_libraries.php";

if (isset($_GET['state']) && $_GET['state'] !== "") {
    $facebook_helper->getPersistentDataHandler()->set("state", $_GET['state']);
} else {
    unset($_SESSION['fb_access_token']);
    header('location:index.php');
}

if (isset($_GET['code']) && $_GET['code'] !== "") {
    $code = $_GET['code'];
    if (isset($_SESSION['fb_access_token'])) {
        $fb_access_token = $_SESSION['fb_access_token'];
    } else {
        $fb_access_token = $facebook_helper->getAccessToken();
        $_SESSION['fb_access_token'] = $fb_access_token;
        $facebook->setDefaultAccessToken($fb_access_token);
    }
    $graph_response = $facebook->get('/me?fields=name,email,id,first_name,last_name,link,gender,locale,picture', $fb_access_token);
    $facebook_user = $graph_response->getGraphUser();
    if (isset($facebook_user['id'])) {
        echo "<pre>";
        print_r($facebook_user);
        echo "</pre>";
    }
} else {
    unset($_SESSION['fb_access_token']);
    header('location:index.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body>

</body>

</html>