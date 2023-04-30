<?php
    $colors = ["#ff0000","#00ff00","#0000ff","#fff000"];
    $idx = rand(0,3);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dynamic color</title>
</head>
<body bgcolor="<?php echo $colors[$idx]; ?>">
    <h1 style="color:white; font-family: arial; text-align: center; margin-top: 300px;">This page has a random color</h1>
</body>
</html>