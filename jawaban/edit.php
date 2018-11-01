<?php
include_once('../header.php');
?>

    <div class="box">
        <h1>Opsi Jawaban</h1>
        <h4>
            <small>Tambah Data Opsi Jawaban</small>
            <div class="pull-right">
                <a href="data.php" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-chevron-left"></i>Kembali</a>
            </div>
        </h4>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
            <?php
             $id = @$_GET['id'];
             $sql_opsi = mysqli_query($con, "SELECT * FROM tb_opsi INNER JOIN tb_pertanyaan ON tb_opsi.id_soal=tb_pertanyaan.kode_pertanyaan WHERE tb_opsi.id_opsi='$id'") or die(mysqli_error($con));
             $data = mysqli_fetch_array($sql_opsi);
             ?>                
                <form action="proses.php" method="post">
                <div class="form-group">
                        <label for="pertanyaan">Pertanyaan</label>
                        <select name="pertanyaan" id="pertanyaan" class="form-control" required>
                            <option value=""><?=$data['pertanyaan']?></option>
                            <?php
                            $sql_pertanyaan = mysqli_query($con,"SELECT*FROM tb_pertanyaan WHERE aktif='Y'") or die (mysqli_error($con));
                            while($data_pertanyaan=mysqli_fetch_array($sql_pertanyaan)){
                                echo '<option value="'.$data_pertanyaan['kode_pertanyaan'].'">'.$data_pertanyaan['pertanyaan'].'</option>';
                            }
                           ?>
                            </select>
                            </div>
                    <div class="form-group">
                    <input type="hidden" name="id" value="<?=$data['id_opsi']?>">
                        <label for="opsi">Opsi Jawaban</label>
                        <input type="text" name="opsi" id="opsi" class="form-control" value="<?=$data['opsi']?>">
                    </div>
                    <div class="form-group">
                        <label for="aktif">Aktif</label>
                        <div>
                            <label class="radio-inline">
                                <input type="radio" name="aktif" id="aktif" value="Y" value="Y" required <?=$data['aktif']=="Y"?"checked":null ?>>Ya
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="aktif" id="aktif" value="N" value="Y" required <?=$data['aktif']=="N"?"checked":null ?>>Tidak
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail">Detail</label>
                        <div>
                            <label class="radio-inline">
                                <input type="radio" name="detail" id="detail" value="Y" value="Y" required <?=$data['detail']=="Y"?"checked":null ?>>Ya
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="detail" id="detail" value="N" value="Y" required <?=$data['detail']=="N"?"checked":null ?>>Tidak
                            </label>
                        </div>
                    </div>
                <div class="form-group">
                <input type="submit" name="edito" value="Simpan" class="btn btn-success">
                
                </div>
        </div>
    </div>

    <?php
    include_once('../footer.php');
    ?>