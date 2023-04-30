<?php
    $images = ["img/1.jpg","img/2.png","img/3.jpg","img/4.jpg","img/5.jpg"];
    $idx = rand(0,4);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dynamic color</title>
</head>
<body background="<?php echo $images[$idx]; ?>">
    <h1 style="color:white; -webkit-text-stroke: 2px black; font-family: arial black; font-weight: bold; text-align: center; margin-top: 20px;">This page has a random image background</h1>
</body>
</html>