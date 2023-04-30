<?php
function valString($text){
    if(preg_match('/^[A-Za-z]{4}[0-9]{4}\*$/',$text)){
        return true;
    }
    return false;
}

function valInt($num){
    if(preg_match('/^(?=.*\d)(?=.*[A-Za-z])(?=.*[@$!%*#?&])[A-Za-z]\d{3}_[A-Za-z]{2}[@$!%*#?&]$/',$num)){
        return true;
    }
    return false;
}

function valDate($date){
    if(preg_match('/^(0[1-9]|[1-2][0-9]|3[0-1])\/(0[1-9]|1[0-2])\/\d{4}$/', $date)){
        return true;
    }
    return false;
}

$user_err = $pass_err = $date_err = "";

if(isset($_POST['submit'])){
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    $date = $_POST['date'];

    if(valString($user)){
        $user_err = "";
    }
    else{
        $user_err = "El usuario no es válido";
    }

    if(valInt($pass)){
        $pass_err = "";
    }
    else{
        $pass_err = "La contraseña no es válida";
    }

    if(valDate($date)){
        $date_err = "";
    }
    else{
        $date_err = "La fecha de nacimiento no es válida";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;lang=en" />
    <title>Login</title>
    <style>
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    label {
        margin-bottom: 10px;
        font-family: 'Open Sans',serif;
    }

    input {
        margin-bottom: 20px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        font-family: 'Open Sans',serif;
        transition: all 0.2s;
    }

    input[type="submit"]:hover {
        background-color: #3c7540;
    }

    .error {
        color: red;
        font-size: 14px;
        margin-top: 5px;
    }
</style>
</head>
<body>
    <form method="post" action="">
    <label>Usuario:</label>
    <input type="text" name="user" required>
    <div class="error"><?php echo $user_err; ?></div>

    <label>Contraseña:</label>
    <input type="text" name="pass" required>
    <div class="error"><?php echo $pass_err; ?></div>

    <label>Fecha de nacimiento:</label>
    <input type="text" name="date" required>
    <div class="error"><?php echo $date_err; ?></div>

    <input type="submit" name="submit" value="Enviar">
</form>
</body>
</html>