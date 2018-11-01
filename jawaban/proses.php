<?php
include '../_config/config.php';

if(isset($_POST['add'])){
$pertanyaan=trim(mysqli_real_escape_string($con,$_POST['pertanyaan']));
$opsi=trim(mysqli_real_escape_string($con,$_POST['opsi']));
$aktif=trim(mysqli_real_escape_string($con,$_POST['aktif']));
$detail=trim(mysqli_real_escape_string($con,$_POST['detail']));
mysqli_query($con, "INSERT INTO tb_opsi (id_soal,opsi,aktif,detail) VALUES ('$pertanyaan','$opsi','$aktif','$detail')") or die (mysqli_error($con));
echo "<script>window.location='data.php';</script>"; 

} else if(isset($_POST['edito'])){
    $id = $_POST['id'];
    $pertanyaan=$_POST['pertanyaan'];
    $opsi=$_POST['opsi'];
    $aktif = $_POST['aktif'];
    $detail=$_POST['detail'];
    mysqli_query($con, "UPDATE tb_opsi SET id_soal = '$pertanyaan', opsi = '$opsi', aktif = '$aktif', detail = '$detail' WHERE id_opsi = '$id'")or die (mysqli_error($con));
    echo "<script>window.location='data.php';</script>"; 

}
?>
