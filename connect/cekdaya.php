<?php  
	//buat koneksi ke database
	$koneksi = mysqli_connect("localhost", "root", "", "dbmonitoring");

	//baca data dari tabel tb_sensor
	$sql = mysqli_query($koneksi, "select * from tb_sensor order by id desc"); //data terakhir akan  berada diatas

	//baca data paling atas
	$data = mysqli_fetch_array($sql);
	$daya= $data['daya'];

	//uji, apabila nilai suhu belum ada, maka anggap suhu = 0
	if($daya == "") $daya = 0;

	//cetak nilai suhu
	echo $daya;

?> 