<?php
include '../_config/config.php';

mysqli_query($con, "DELETE FROM tb_pertanyaan WHERE kode_pertanyaan='$_GET[id]'") or die (mysqli_error($con));
echo "<script>window.location='data.php';</script>";
?>