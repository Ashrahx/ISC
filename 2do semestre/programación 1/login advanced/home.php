<?php
session_start();

if (!isset($_SESSION['username'])) {
	header('Location: login.html');
	exit();
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<title>Page PHP</title>
	<script src="https://kit.fontawesome.com/7af13692c6.js" crossorigin="anonymous"></script>
	<style>
		* {
			margin: 0;
		}

		.icon {
			font-size: 50px;
		}

		.main {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}

		header {
			background: #6377ac;
			color: #fff;
			padding: 20px;
			text-align: center;
		}

		.container {
			max-width: 800px;
			margin: 0 auto;
			padding: 20px;
		}

		.title {
			font-size: 28px;
			margin-top: 0;
		}

		p {
			font-size: 16px;
			line-height: 1.5;
			margin: 0 0 20px 0;
		}

		ul {
			list-style: disc;
			margin: 0 0 20px 0;
			padding: 0;
		}

		li {
			margin: 0 0 10px 0;
		}

		/* Card */
		.card {
			background-color: #fff;
			border-radius: 4px;
			box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
			display: flex;
			flex-direction: column;
			align-items: center;
			margin: 2em auto;
			max-width: 500px;
			padding: 1em;
			text-align: center;
		}

		.card__header {
			display: flex;
			align-items: center;
			margin-bottom: 1em;
			width: 100%;
		}

		.card__header h1 {
			font-size: 2em;
			margin: 0;
			padding: 0;
			flex-grow: 1;
			text-align: left;
		}

		.card__header i {
			font-size: 2em;
			margin-right: 0.5em;
		}

		.card__body {
			margin-bottom: 1em;
			width: 100%;
		}

		.card__body h2 {
			font-size: 1.5em;
			margin: 0;
			padding: 0;
			margin-bottom: 0.5em;
		}

		.card__body p {
			margin: 0;
			padding: 0;
		}

		.card__footer {
			margin-top: 1em;
			width: 100%;
		}

		.card__footer a {
			background-color: #db1414;
			border: none;
			border-radius: 8px;
			color: #fff;
			cursor: pointer;
			font-size: 1em;
			padding: 0.5em 1em;
			text-align: center;
			text-decoration: none;
			transition: background-color 0.2s ease-in-out;
		}

		.card__footer a:hover {
			background-color: #961414;
		}

		/* Elephant */
		.box {
			position: relative;
			display: block;
			margin: auto;
			margin-top: 6%;
			height: 400px;
			width: 600px;
			background: none;
			opacity: 1;
			z-index: 1;
			background-size: 450px;
		}

		.topLayer,
		.front-leg-2,
		.front-leg-1,
		.back-leg-2,
		.back-leg-1,
		.tail-shadow,
		.teeth-shadow,
		.teeth:after,
		.teeth,
		.ear-shadow,
		.ear,
		.ele-body {
			z-index: 2;
			opacity: 1;
		}

		.ele-body {
			position: absolute;
			width: 40%;
			height: 36.5%;
			top: 38%;
			left: 29.5%;
			background-color: #dceefa;
			border: 1px solid #2c7bb6;
			border-radius: 60px 60px 0 0;
		}

		.eye {
			position: absolute;
			width: 8px;
			height: 8px;
			top: 29%;
			left: 88%;
			background-color: #2c7bb6;
			border-radius: 50%;
		}

		.ear {
			position: absolute;
			width: 77px;
			height: 77px;
			top: 36%;
			left: 49.5%;
			border-radius: 50%;
			border: 1px solid #dceefa;
			background-color: #dceefa;
			border-top-color: #2c7bb6;
			border-left-color: #2c7bb6;
			border-bottom-color: #2c7bb6;
			z-index: 3;
		}

		.ear-shadow {
			position: absolute;
			width: 65px;
			height: 65px;
			top: 40%;
			left: 46.5%;
			border-radius: 50%;
			background-color: #b1d5e5;
			border: 0;
			z-index: 2;
		}

		.teeth {
			position: absolute;
			width: 55px;
			height: 40px;
			top: 56%;
			left: 68%;
			border-bottom-left-radius: 50px;
			border-bottom-right-radius: 2px;
			background-color: #dceefa;
			z-index: 3;
			border-left: 1px solid #2c7bb6;
			border-bottom: 1px solid #2c7bb6;
			border-right: 1px solid #2c7bb6;
		}

		.teeth:after {
			content: "";
			position: absolute;
			width: 46px;
			height: 40px;
			top: -10%;
			left: 17%;
			border-bottom-left-radius: 50px;
			border-left: 1px solid #2c7bb6;
			border-bottom: 1px solid #2c7bb6;
			background-color: white;
			z-index: 3;
		}

		.teeth-shadow {
			position: absolute;
			width: 10px;
			height: 40px;
			top: 56%;
			left: 68%;
			background-color: #b1d5e5;
			border-bottom-left-radius: 5px;
			border-bottom-right-radius: 5px;
			z-index: 2;
		}

		.tail-shadow {
			position: absolute;
			width: 4px;
			height: 70px;
			top: 56%;
			left: 30%;
			background-color: #b1d5e5;
			border-bottom-left-radius: 5px;
			border-bottom-right-radius: 5px;
			z-index: 2;
		}

		.back-leg-1 {
			position: absolute;
			width: 30px;
			height: 96px;
			top: 55.5%;
			left: 30.5%;
			border-left: 1px solid #2c7bb6;
			border-bottom: 1px solid #2c7bb6;
			background-color: #dceefa;
			z-index: 2;
		}

		.back-leg-2 {
			position: absolute;
			width: 10px;
			height: 18px;
			top: 74.8%;
			left: 35.7%;
			border: 1px solid #2c7bb6;
			background-color: #b1d5e5;
			z-index: 2;
		}

		.front-leg-1 {
			position: absolute;
			width: 32px;
			height: 96px;
			top: 55.5%;
			left: 61.7%;
			border-right: 1px solid #2c7bb6;
			border-bottom: 1px solid #2c7bb6;
			background-color: #dceefa;
			z-index: 2;
		}

		.front-leg-2 {
			position: absolute;
			width: 10px;
			height: 18px;
			top: 74.8%;
			left: 59.9%;
			border: 1px solid #2c7bb6;
			background-color: #b1d5e5;
			z-index: 2;
		}

		.ground {
			position: absolute;
			width: 370px;
			height: 1px;
			top: 79.7%;
			left: 10%;
			background-color: #2c7bb6;
		}

		.tree-round-1,
		.tree-round-4,
		.tree-round-3,
		.tree-round-2 {
			position: absolute;
			width: 130px;
			height: 130px;
			top: 13%;
			left: 45%;
			background-color: #eef7fd;
			border-radius: 50%;
			opacity: 1;
		}

		.tree-round-2 {
			top: 13%;
			left: 26%;
		}

		.tree-round-3 {
			top: 25%;
			left: 27%;
		}

		.tree-round-4 {
			top: 3%;
			left: 34%;
		}

		.tree-round-stem,
		.tree-triangle-stem {
			position: absolute;
			width: 40px;
			height: 139px;
			top: 44.8%;
			left: 43%;
			background-color: #eef7fd;
		}

		.tree-triangle-1 {
			position: absolute;
			width: 0;
			height: 0;
			top: 10%;
			left: 2%;
			border-left: 80px solid transparent;
			border-right: 80px solid transparent;
			border-bottom: 100px solid #eef7fd;
		}

		.tree-triangle-2 {
			position: absolute;
			width: 0;
			height: 0;
			top: 25%;
			left: 2%;
			border-left: 80px solid transparent;
			border-right: 80px solid transparent;
			border-bottom: 100px solid #eef7fd;
		}

		.tree-triangle-stem {
			width: 23px;
			left: 13.5%;
		}
	</style>
</head>

<body class="main">
	<header>
		<h1 class="title"><i class="fa-brands fa-php icon" style="color: #ffffff;"></i> Information</h1>
	</header>
	<br><br>
	<div class="container">
		<div class="card">
			<div class="card__header">
				<h1>Aquí debería ir una imagen</h1>
			</div>
			<div class="card__body">
				<h2><?php echo $_SESSION['username']; ?></h2>
				<p>You are now logged in.</p>
			</div>
			<div class="card__footer">
				<a href="logout.php">Logout</a>
			</div>
		</div>
		<br><br>
	</div>
	<div class="box">
		<div class="ele-body">
			<div class="eye"></div>
		</div>
		<div class="ear"></div>
		<div class="ear-shadow"></div>
		<div class="teeth "></div>
		<div class="teeth-shadow "></div>
		<div class="tail-shadow "></div>
		<div class="back-leg-1 "></div>
		<div class="back-leg-2 "></div>
		<div class="front-leg-1 "></div>
		<div class="front-leg-2 "></div>
		<div class="ground "></div>
		<div class="tree-round-1"></div>
		<div class="tree-round-2"></div>
		<div class="tree-round-3"></div>
		<div class="tree-round-4"></div>
		<div class="tree-round-stem"></div>
		<div class="tree-triangle-1">
		</div>
		<div class="tree-triangle-2">
		</div>
		<div class="tree-triangle-stem">
		</div>
	</div>
</body>

</html>