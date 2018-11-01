<?php
include_once('../header.php');
?>

    <div class="row ml-5">
    <h1>Input Data Diri Customer</h1>  
    <form class="form-horizontal">
<fieldset>


<form action="proses.php" method="post">
<div class="form-group">
  <label class="col-md-3" control-label" for="nama">Nama </label>  
  <div class="col-md-4">
  <input id="nama" name="nama" placeholder="Isikan nama Anda di sini" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-3" control-label" for="produk">Produk yang dibeli</label>  
  <div class="col-md-4">
       <?php
        $query=mysqli_query($con, "SELECT*FROM tb_produk");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[produk]</option>";
        }
        ?>
  <select name="produk" class="form-control" id="produk">
                    <option selected>--Pilih salah satu--</option>
                    <?php echo $pilihan;?> 
  </select>  
  </div>
  
  <label class="col-md-1 control-label" for="type">Type</label>  
  <div class="col-md-2"> 
  <input id="type" name="type" placeholder="Type" class="form-control input-md" required="" type="text">
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="alamat_kerja">Alamat Tempat Kerja </label>  
  <div class="col-md-4">
  <textarea rows="5" id="alamat_kerja" name="alamat_kerja" placeholder="Isikan alamat kerja Anda di sini" class="form-control input-md" required="" type="text"></textarea>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="alamat_tinggal">Alamat Tempat Tinggal Sekarang </label>  
  <div class="col-md-4">
  <textarea rows="5" id="alamat_tinggal" name="alamat_tinggal" placeholder="Isikan alamat tempat tinggal Anda di sini" class="form-control input-md" required="" type="text"></textarea>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="telepon">No Telp/Hp</label>  
  <div class="col-md-4">
  <input id="telepon" name="telepon" placeholder="08********" class="form-control input-md" required="" type="number">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="jkel">Jenis Kelamin</label>  
  <div class="col-md-2">
 <?php
        $query=mysqli_query($con, "SELECT*FROM jenis_kelamin");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[jenis_kelamin]</option>";
        }
        ?>
  <select name="jkel" class="form-control" id="jkel">
                    <option selected>--Pilih salah satu--</option>
                    <?php echo $pilihan;?> 
  </select>  
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="usia">Umur</label>  
  <div class="col-md-2">
 <?php
        $query=mysqli_query($con, "SELECT*FROM usia");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[usia]</option>";
        }
        ?>
  <select name="usia" class="form-control" id="usia">
                    <option selected>--Pilih salah satu--</option>
                    <?php echo $pilihan;?> 
  </select>  
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="pekerjaan">Pekerjaan</label>  
  <div class="col-md-2">
 <?php
        $query=mysqli_query($con, "SELECT*FROM pekerjaan");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[pekerjaan]</option>";
        }
        ?>
  <select name="pekerjaan" class="form-control" id="pekerjaan">
                    <option selected>--Pilih salah satu--</option>
                    <?php echo $pilihan;?> 
  </select>  
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="pendidikan">Pendidikan Terakhir</label>  
  <div class="col-md-2">
  <?php
        $query=mysqli_query($con, "SELECT*FROM pendidikan");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[pendidikan]</option>";
        }
        ?>
  <select name="pendidikan" class="form-control" id="pendidikan">
                    <option selected>--Pilih salah satu--</option>
                    <?php echo $pilihan;?> 
  </select>  
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="status">Status</label>  
  <div class="col-md-3">
  <?php
        $query=mysqli_query($con, "SELECT*FROM status");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[status]</option>";
        }
        ?>
  <select name="status" class="form-control" id="status">
                    <option selected>--Pilih salah satu--</option>
                    <?php echo $pilihan;?> 
  </select>  
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="penghasilan">Penghasilan</label>  
  <div class="col-md-2">
  <?php
        $query=mysqli_query($con, "SELECT*FROM penghasilan");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[penghasilan]</option>";
        }
        ?>
  <select name="penghasilan" class="form-control" id="penghasilan">
                    <option selected>--Pilih salah satu--</option>
                    <?php echo $pilihan;?> 
  </select>  
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="sumber">Sumber Penghasilan</label>  
  <div class="col-md-3">
  <?php
        $query=mysqli_query($con, "SELECT*FROM sumber_penghasilan");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[sumber_hasil]</option>";
        }
        ?>
  <select name="sumber" class="form-control" id="sumber">
                    <option selected>--Pilih salah satu--</option>
                    <?php echo $pilihan;?> 
  </select>  
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-3" control-label" for="tujuan">Tujuan Pembelian</label>  
  <div class="col-md-3">
  <?php
        $query=mysqli_query($con, "SELECT*FROM tujuan_pembelian");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[tujuan]</option>";
        }
        ?>
  <select name="tujuan" class="form-control" id="tujuan">
                    <option selected>--Pilih salah satu--</option>
                    <?php echo $pilihan;?> 
  </select>  
    
  </div>
</div>

<div class="form-group">

        <div class="col-xs-12">
        <?php
        $no = 1;
        $pertanyaan = mysqli_query($con, "SELECT*FROM tb_pertanyaan");

        while($opsi=mysqli_fetch_array($pertanyaan)){
        
        echo $no++.'.'.'&nbsp';
        echo"&nbsp<label> $opsi[pertanyaan]</label><br>";
      
        $ops=mysqli_query($con, "SELECT*FROM tb_opsi WHERE tb_opsi.id_soal='$opsi[kode_pertanyaan]'");
        while($nisa=mysqli_fetch_array($ops)){
        echo "
        <div class='checkbox'>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type=checkbox name='s$nisa[id_opsi]' value=$nisa[opsi] > $nisa[opsi]
        </div><br>
       

        " ;
        
            if ($nisa['detail']=='Y'){
            echo "
            <div class='col-md-4'>
            <input type='text' name=\"d$nisa[id_opsi]\" id='detail' class='form-control' required>
            </div><br><br>";
        }
            //echo "<br>";
        }
        echo "<br>";
        }
        ?>
   
    </div> 

</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="kirim"></label>
  <div class="col-md-4">
    <button id="tambah" type="submit" name="tambah" class="btn btn-primary">Submit</button>
  </div>
</div>
</form>
</fieldset>
</form>
</div>
    <?php
    include_once('../footer.php');
    ?>