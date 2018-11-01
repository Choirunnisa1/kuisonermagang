<?php
include_once('../header.php');
?>
    <div class="row">
        <h1>Pertanyaan</h1>
        <h4>
            <small>Tambah Data Pertanyaan</small>
            <div class="pull-right">
                <a href="data.php" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-chevron-left"></i>Kembali</a>
            </div>
        </h4>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <form action="proses.php" method="post">
                    <div class="form-group">
                        <label for="pertanyaan">Pertanyaan</label>
                        <input type="text" name="pertanyaan" id="pertanyaan" class="form-control" required autofocus>
                    </div>
                    <div class="form-group">
                        <label for="pertanyaan">Aktif</label>
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
                    <input type="submit" name="add" value="Simpan" onclick="return confirm('Data Berhasil ditambahkan?')" class="btn btn-success">
                </div>
        </div>
    </div>

    <?php
    include_once('../footer.php');
    ?>