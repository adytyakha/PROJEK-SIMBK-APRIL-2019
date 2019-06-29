<?php

		$db_host = "localhost";
		$db_user = "id9653960_simbkup";
		$db_password ="12345";
		$db_name = "id9653960_simbkup";
		

		$koneksi = mysqli_connect($db_host, $db_user, $db_password, $db_name);

		if (!$koneksi) {
		die("Gagal Terkoneksi ".mysqli_connect_error(). " - ".mysqli_connection_error() );
		exit();

		}
		?>
