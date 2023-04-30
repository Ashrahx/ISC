<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$username = $_POST['username'];
	$password = $_POST['password'];
	$confirm_password = $_POST['confirm_password'];

	if ($password != $confirm_password) {
		echo 'Passwords do not match';
	} else {
		// Leer el archivo JSON y convertirlo a un array asociativo
		$users = json_decode(file_get_contents('users.json'), true);

		// Verificar que el usuario no exista ya en el archivo JSON
		if (array_key_exists($username, $users)) {
			echo 'Username already exists';
		} else {
			// Agregar el usuario y la contraseña al archivo JSON
			$users[$username] = $password;
			file_put_contents('users.json', json_encode($users));

			header("Location: home.php");
			exit();
		}
	}
}
?>

