<?php
include_once('../header.php');
?>

    <div class="row">
        <h1>Opsi Jawaban</h1>
        <h4>
            <small>Tambah Data Opsi Jawaban</small>
            <div class="pull-right">
                <a href="data.php" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-chevron-left"></i>Kembali</a>
            </div>
        </h4>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <form action="proses.php" method="post">
                <div class="form-group">
                        <label for="pertanyaan">Pertanyaan</label>
                        <select name="pertanyaan" id="pertanyaan" class="form-control" required>
                            <option value="">-- Pilih Pertanyaan --</option>
                            <?php
                            $sql_pertanyaan = mysqli_query($con,"SELECT*FROM tb_pertanyaan WHERE aktif='Y'") or die (mysqli_error($con));
                            while($data_pertanyaan=mysqli_fetch_array($sql_pertanyaan)){
                                echo '<option value="'.$data_pertanyaan['kode_pertanyaan'].'">'.$data_pertanyaan['pertanyaan'].'</option>';
                            }
                           ?>
                            </select>
                            </div>
                    <div class="form-group">
                        <label for="opsi">Opsi Jawaban</label>
                        <input type="text" name="opsi" id="opsi" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="aktif">Aktif</label>
                        <div>
                            <label class="radio-inline">
                                <input type="radio" name="aktif" id="aktif" value="Y" required>Ya
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="aktif" id="aktif" value="N" required>Tidak
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="detail">Detail</label>
                        <div>
                            <label class="radio-inline">
                                <input type="radio" name="detail" id="detail" value="Y" required>Ya
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="detail" id="detail" value="N" required>Tidak
                            </label>
                        </div>
                    </div>
                <div class="form-group">
                    <input type="submit" name="add" value="Simpan" onclick="return confirm('Data Berhasil ditambahkan?')" class="btn btn-success">
                </div>
        </div>
    </div>

    <?php
    include_once('../footer.php');
    ?>