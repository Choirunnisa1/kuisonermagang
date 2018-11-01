<?php include ('../header.php'); ?>
<div class="row">
	<h1>Pertanyaan</h1>
	<h4>
		<small>List Pertanyaan</small>
		<div class="pull-right">
			<a href="" class="btn btn-default btn-xs"><i class="glyphicon glyphicon-refresh"></i></a>
			<a href="add.php" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-plus"></i>Tambah Pertanyaan</a>
		</div>
	</h4>
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>No.</th>
				<!-- <th style="text-align:center;">Id</th> -->
				<th>Pertanyaan</th>
				<th>Aktif</th>
				<th style="text-align:center;"><i class="glyphicon glyphicon-cog"></i></th>
		</tr>
</thead>
<tbody>

	<?php
	$batas=5;
	$hal = @$_GET['hal'];
	if(empty($hal)){
		$posisi=0;
		$hal=1;
	} else{
		$posisi=($hal -1)*$batas;
	}
	$no = 1;
	if($_SERVER['REQUEST_METHOD']=="POST"){
		$pencarian= trim(mysqli_real_escape_string($con,$_POST['pencarian']));
		if($pencarian!=''){
			$sql="SELECT*FROM tb_pertanyaan WHERE pertanyaan LIKE'%$pencarian%'";
			$query = $sql;
			$queryJml = $sql;	
		} else {
			$query = "SELECT*FROM tb_pertanyaan LIMIT $posisi, $batas";
			$queryJml="SELECT*FROM tb_pertanyaan";
			$no = $posisi + 1;
		}
	} else{
			$query = "SELECT*FROM tb_pertanyaan LIMIT $posisi, $batas";
			$queryJml="SELECT*FROM tb_pertanyaan";
			$no = $posisi + 1;
	}
	$sql_pertanyaan = mysqli_query($con,$query) or die (mysqli_error($con));
	if(mysqli_num_rows($sql_pertanyaan)>0){
		while($data=mysqli_fetch_array($sql_pertanyaan)){?>
			<tr>
				<td><?=$no++?></td>
				<td><?=$data['pertanyaan']?></td>
				<td><?=$data['aktif']?></td>
				<td class="text-center">
				<a href="edit.php?id=<?=$data['kode_pertanyaan']?>" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-edit"></i></a>
				<a href="delete.php?id=<?=$data['kode_pertanyaan']?>" onclick="return confirm('Yakin akan menghapus data?')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
				</td>
		</tr>
	 <?php
		}
	} else {
		echo "<tr><td colspan=\"4\"align=\"center\">Data tidak ditemukan</td><tr>";
	}
	?>
	</tbody>
	</table>
	</div>
	<?php
	if(isset($_POST['pencarian'])){
		echo"<div style=\"float:left;\">";
		$jml= mysqli_num_rows(mysqli_query($con, $queryJml));
		echo"Data Hasil Pencarian :<b>$jml</b>";
		echo "</div>";

	} else{ ?>
		<div style="float:left;">
		<?php
		$jml=mysqli_num_rows(mysqli_query($con, $queryJml));
		echo "Jumlah Data : <b>$jml</b>";
		?>
		</div>
		<div style="float:right;">
		<ul class="pagination pagination-sm" style="margin:0">
		<?php
		$jml_hal= ceil($jml / $batas);
		for($i=1; $i <= $jml_hal; $i++){
			if($i != $hal){
			echo "<li><a href=\"?hal=$i\">$i</a></li>";
		} else {
			echo "<li class=\"active\"><a>$i</a></li>";
		}
	}
	?>
	</ul>
		</div>
			<?php
			
	}
?>
</div>
<? include ('../footer.php'); ?>