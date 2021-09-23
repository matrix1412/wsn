<?php 
	//buat koneksi ke database
	$koneksi = mysqli_connect("localhost", "root", "", "dbmonitoring");

	//baca data yang dikirim data esp8266
	//baca data yang dikirim data esp8266
	$tegangan = $_GET['tegangan'];
	$arus = $_GET['arus'];
	$daya = $_GET['daya'];
	$lux = $_GET['lux'];
	

	//auto increment = 1 / mengembalikan ID menjadi 1 apabila dikosongkan
	mysqli_query($koneksi, "ALTER TABLE tb_sensor AUTO_INCREMENT=1");

	//simpan data sensor ke tabel tb_sensor
	$simpan = mysqli_query($koneksi, "insert into tb_sensor(tegangan, arus, daya, lux)values('$tegangan', '$arus', '$daya', '$lux')");

	//uji simpan unutk memberikan respon
	if($simpan)
		echo "Berhasil dikirm";
	else
		echo "Gagal terkirim";
 
 
?>
