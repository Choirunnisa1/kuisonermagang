<?php
include_once('../_header.php');
?>


        <h1>Form Customer</h1>
            <form action="proses.php" method="post">
            
           
                    <div class="form-group">
                    <div class="col-lg-12">
                        <label for="nama">Nama</label>
                        <input class="col-lg-6" type="text" name="nama" id="nama" class="form-control" required autofocus>
                        <br>
                    </div>
                    </div>
                    
       
        <form action="proses.php" method="post">
        <div class="form-group">
        <div class="col-xs-5">
        <label for="produk">Produk yang dibeli</label><br>
        <?php
        $query=mysqli_query($con, "SELECT*FROM tb_produk");
        $pilihan="";
        while($jwb=mysqli_fetch_array($query))
        {
            $pilihan = $pilihan."<option>$jwb[produk]</option>";
        }
        ?>
    
    <select name="produk" class="form-control" id="lokasi">
                    <option selected></option>
                    <?php echo $pilihan;?> 
                  </select>

        </div>
        </div>
                <div class="form-group">
                    <input type="submit" name="add" value="Simpan" onclick="return confirm('Data Berhasil ditambahkan?')" class="btn btn-success">
                </div>
        </div>
    </div>

    <?php
    include_once('../_footer.php');
    ?>