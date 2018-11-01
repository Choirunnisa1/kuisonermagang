<?php include ('../header.php'); ?>
<div class="row">
	<h1>Opsi Jawaban</h1>
	<h4>
		<small>List Opsi Jawaban</small>
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
				<th>Pertanyaan</th>
				<th>Opsi Jawaban</th>
				<th>Aktif</th>
				<th>Detail</th>
				<th style="text-align:center;"><i class="glyphicon glyphicon-cog"></i></th>
		</tr>
</thead>
<tbody>
	<?php
	$no=1;
	$sql_opsi = mysqli_query($con,"SELECT*FROM tb_opsi INNER JOIN tb_pertanyaan ON tb_opsi.id_soal=tb_pertanyaan.kode_pertanyaan") or die (mysqli_error($con));
	if(mysqli_num_rows($sql_opsi)>0){
		while($data=mysqli_fetch_array($sql_opsi)){?>
			<tr>
				<td><?=$no++?></td>
				<td><?=$data['pertanyaan']?></td>
				<td><?=$data['opsi']?></td>
				<td><?=$data['aktif']?></td>
				<td><?=$data['detail']?></td>
				<td class="text-center">
				<a href="edit.php?id=<?=$data['id_opsi']?>" class="btn btn-warning btn-xs"><i class="glyphicon glyphicon-edit"></i></a>
				<a href="delete.php?id=<?=$data['id_opsi']?>" onclick="return confirm('Yakin akan menghapus data?')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i></a>
				</td>
		</tr>
	 <?php
		}
	} else {
		
	}
	?>
	</tbody>
	</table>
	</div>
	
</div>
<? include ('../footer.php'); ?>