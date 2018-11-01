<?php
include '../_config/config.php';


if(isset($_POST['add'])){
$pertanyaan=trim(mysqli_real_escape_string($con,$_POST['pertanyaan']));
$aktif=trim(mysqli_real_escape_string($con,$_POST['aktif']));
mysqli_query($con, "INSERT INTO tb_pertanyaan (pertanyaan,aktif) VALUES ('$pertanyaan','$aktif')") or die (mysqli_error($con));
echo "<script>window.location='data.php';</script>";

} else if(isset($_POST['edito'])){
    $id = $_POST['id'];
    $pertanyaan=$_POST['pertanyaan'];
    $aktif = $_POST['aktif'];
    mysqli_query($con, "UPDATE tb_pertanyaan SET pertanyaan = '$pertanyaan', aktif='$aktif' WHERE kode_pertanyaan = '$id'") or die (mysqli_error($con));
    echo "<script>window.location='data.php';</script>"; 
}
?>
