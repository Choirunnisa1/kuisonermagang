<?php
date_default_timezone_get('Asia/Jakarta');
session_start();

global $con;

$con = mysqli_connect('localhost','root','','kuisoner_magang');
if (mysqli_connect_errno()) {
	echo mysqli_connect_errno();
}

function base_url($url = null){
	$base_url = "http://localhost/myproject";
	if ($url !=null) {
		return $base_url."/".$url;	
	} else {
		return $base_url;
	}
}

?>