<?php include_once('../header.php');?>

    <div class="row">
        <h1>Pertanyaan</h1>
        <h4>
            <small>Edit Data Pertanyaan</small>
            <div class="pull-right">
                <a href="data.php" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-chevron-left"></i>Kembali</a>
            </div>
        </h4>
        <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
        <?php
        $id = @$_GET['id'];
        $sql_pertanyaan = mysqli_query($con, "SELECT * FROM tb_pertanyaan WHERE kode_pertanyaan='$id'") or die(mysqli_error($con));
        $data = mysqli_fetch_array($sql_pertanyaan);
        ?>
                <form action="proses.php" method="post">
                    <div class="form-group">
                    <label for="pertanyaan">Pertanyaan</label>                                      
                    <input type="hidden" name="id" value="<?=$data['kode_pertanyaan']?>">
                    <input type="text" name="pertanyaan" id="pertanyaan" value="<?=$data['pertanyaan']?>" class="form-control" required autofocus>
                    </div>
                    <div class="form-group">
                        <label for="aktif">Aktif</label>
                        <div>
                            <label class="radio-inline">
                                <input type="radio" name="aktif" id="aktif" value="Y" required <?=$data['aktif']=="Y"?"checked":null ?>>Ya
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="aktif" id="aktif" value="N" required <?=$data['aktif']=="N"?"checked":null ?>>Tidak
                            </label>
                        </div>
                    </div>
                <div class="form-group pull-right">
                 <input type="submit" name="edito" value="Simpan" class="btn btn-success">
                </div>
                </form>
            </div>
        </div>
    </div>

    <?php
    include_once('../footer.php');
    ?>