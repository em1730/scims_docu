<?php
	session_start();
	$_SESSION['logged']='';
	unset($_SESSION);
	session_destroy();
	header("Location: index.php");

?>
