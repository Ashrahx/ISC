<?php
function valInt($num){
    if(preg_match('/^(?=.*\d)(?=.*[A-Za-z])(?=.*[@$!%*#?&])[A-Za-z]\d{3}_[A-Za-z]{2}[@$!%*#?&]$/',$num)){
        return true;
    }
    return false;
}

function valString($text){
    if(preg_match('/^[A-Z]{4}[0-9]{4}[A-Za-z]$/',$text)){
        return true;
    }
    return false;
}

function valDate($date){
    if(preg_match('/^(0[1-9]|[1-2][0-9]|3[0-1])\/(0[1-9]|1[0-2])\/(200[5-9]|20[1-2[0-9]|203[0-3])$/', $date)){ //d funciona como abreviatura de [0-9] 
        return true;
    }
    return false;
}
echo "<ul>";
$user = valString("e");
if($user){
    echo("<li> It is valid </li>");
}
else{
    echo("<li> It is not valid </li>");
}

$pass = valInt("5"); // Output: 0 (False)
if($pass){
    echo("<li> It is valid </li>");
}
else{
    echo("<li > It is not valid </li>");
}

$date = "09/01/2023";
if($date){
    echo("<li> The date of birth is valid </li>");
}
else{
    echo("<li> The date of birth is not valid </li>");
}
echo "</ul>";
?>