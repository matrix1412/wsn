<?php  
	//buat koneksi ke database
	$koneksi = mysqli_connect("localhost", "root", "", "dbmonitoring");

	//baca data dari tabel tb_sensor
	$sql = mysqli_query($koneksi, "select * from panel1_lora order by id desc"); //data terakhir akan  berada diatas

	//baca data paling atas
	$data = mysqli_fetch_array($sql);
	$lux = $data['lux'];

	//uji, apabila nilai ldr belum ada, maka anggap ldr = 0
	if($lux == "") $lux = 0;

	//cetak nilai ldr
	echo $lux ;

?> 