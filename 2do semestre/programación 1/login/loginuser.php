<?php
    require_once ("class/user.class.php");

    //Instanciar el objeto usuario correcto
    $admin = new User("user", "user");

    //Traer valores de login.html
    $name = $_POST['user'];
    $pass = $_POST['pass'];

    $usr = new User($name, $pass);

    if($admin -> getUsername() != $usr -> getUsername()){
        echo "Incorrect user and/or password.";
        header('Refresh: 1; url=login.html');
    }
    else{
        if($admin -> getPass() != $usr -> getPass()){
            echo "Incorrect user and/or password.";
            header('Refresh: 1; url=login.html');
        }
        else{
            echo "Welcome 😊👍";
            header('Refresh: 1; url=main.html');
        }
    }
?>