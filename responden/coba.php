<?php include_once ('../_header.php'); ?>

        <form action="proses.php" method="post">
        
        <div class="form-group">
        <div class="col-xs-12">
        <?php
        $no = 1;
        $pertanyaan = mysqli_query($con, "SELECT*FROM tb_pertanyaan");

        while($opsi=mysqli_fetch_array($pertanyaan)){
        
        echo $no++.'.'.'&nbsp';
        echo"<label> $opsi[pertanyaan]</label><br>";
      
        $ops=mysqli_query($con, "SELECT*FROM tb_opsi WHERE tb_opsi.id_soal='$opsi[kode_pertanyaan]'");
        while($nisa=mysqli_fetch_array($ops)){
        echo "
        <div class='col-xs-12'>
        <div class='checkbox'>
        <input type=checkbox name='s$nisa[id_opsi]' value=1 > $nisa[opsi]
        </div>
        </div>" ;
        
            if ($nisa['detail']=='Y'){
            echo "<input type='text' name=\"d$nisa[id_opsi]\" id='detail' class='form-control' required>";
        }
            //echo "<br>";
        }
        echo "<br>";
        }
        ?>
    <div class="form-group">
    <input type="submit" value="Simpan"  class="btn btn-success">
    </div> 
    </div> 
   
    </div>



<? include_once ('../_footer.php'); ?>