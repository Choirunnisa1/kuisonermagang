<?php
include '../_config/config.php';

// $proses= mysqli_query($con,"SELECT id_soal FROM tb_pertanyaan")or die (mysqli_error($con));
// while($data=mysqli_fetch_array($proses)){
//     if(isset($data[id_soal])){
//         $value = $_POST[$data];
       
//         $jawaban = mysqli_query($con, "SELECT detail FROM tb_opsi WHERE ") or die (mysqli_error($con));
//         while($ops=mysqli_fetch_array($jawaban)){
//             if(isset($ops[detail])){
//     }
// }
//     }
// }
$pertanyaan = mysqli_query($con, "SELECT*FROM tb_opsi");
$jawab=array();  
$detail=array();
$j=array();
while($opsi=mysqli_fetch_array($pertanyaan)){
    $no=$opsi['id_opsi'];
    $j[$no]="";
    $dtl[$no]="";
    if (isset($_POST["s$no"])){
        $sql = "update tb_opsi set jml=(jml+1) where id_opsi = $no";
        mysqli_query($con, $sql);
        $j[$no]=$_POST["s$no"];
    }
    if (isset($_POST["d$no"])){ 
        mysqli_query($con, $sql);
        $dtl[$no]=$_POST["d$no"];
    }
    $detail['dtl'.$no]=  $dtl[$no];

    $jawab['jws'.$no]=  $j[$no];
}




echo json_encode($jawab);
echo json_encode($detail);
?>