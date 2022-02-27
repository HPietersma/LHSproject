<?php
header('Content-Type: application/json');

$con = mysqli_connect('localhost', 'root', '', 'bier');

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}



session_start();


$json = "niks";

$request_body = file_get_contents('php://input');
$data = json_decode($request_body, true);

if(isset($data['login'])) {

    //$username = $_POST["gebruikersnaam"];
    //$password = $_POST["wachtwoord"];
    $username = $data['gebruikersnaam'];
    $password = $data['wachtwoord'];

    $sql = "SELECT *
            FROM `users` 
            WHERE   gebruikersnaam = '$username' AND
                    wachtwoord = '$password'
            ";

    $res = mysqli_query($con, $sql);   
    if($res) {
        while($rij = mysqli_fetch_assoc($res)) {
            $_SESSION['username'] = $rij['gebruikersnaam'];
            $_SESSION['user_id'] = $rij['id'];
        }
        $json2 = array(
            "logged_in"=>true,
            "user_id"=>$_SESSION['user_id'],
            "username"=>$_SESSION['username']
        );
        $json = array(
            "data"=>$json2
        );
    } else {
        $json = array(
            "logged_in"=>false,
        );
    }
}

echo json_encode($json);
//print_r($json);