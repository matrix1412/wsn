<?php
	//buat koneksi ke database
	$koneksi = mysqli_connect("localhost", "root", "", "dbmonitoring");

	//membaca informasi tanggal pada database sumbu x
	$tanggal = mysqli_query($koneksi, "SELECT tanggal FROM tb_sensor ORDER BY id DESC LIMIT 0, 5");

	//membaca informasi suhu pada database sumbu y
	$tegangan = mysqli_query($koneksi, "SELECT tegangan FROM tb_sensor ORDER BY id DESC");

	//membaca informasi ldr pada database sumbu y
	$arus = mysqli_query($koneksi, "SELECT arus FROM tb_sensor ORDER BY id DESC");

	//membaca informasi kelembaban pada database sumbu y
	$daya = mysqli_query($koneksi, "SELECT daya FROM tb_sensor ORDER BY id DESC" );

	// membaca informasi tegangan pada database sumbu y
	$lux = mysqli_query($koneksi, "SELECT lux FROM tb_sensor ORDER BY id DESC");


?>

<!-- TAMPILAN GRAFIK -->
<div class="panel panel-primary">
	<div class="panel-heading"></div>
</div>

<div class="panel-body">
	<canvas id="panel1_nrf"></canvas>

	<!-- gambar grafik -->
	<script type="text/javascript">
		//baca is canvas
		var canvas = document.getElementById('panel1_nrf');
		//letakkan data tanggal dan suhu untuk grafik
		var data = {
			labels : [
			<?php 
				while ($data_tanggal = mysqli_fetch_array($tanggal)) {
					echo '"'.$data_tanggal['tanggal'].'",';
				}
			?>
			],
			datasets : [
			  {
				label : "Tegangan",
				fill : true, 
				backgroundColor: "rgba(78, 115, 223, 0.05)",
				borderColor : "rgba(0, 0, 255, 1)",
				lineTension : 0.1,
				data : [
				<?php
				while ($data_tegangan = mysqli_fetch_array($tegangan)) 
				{
					echo $data_tegangan['tegangan']. ',' ;
				}

				?>
			]
			  },
			  {
				label : "Arus",
				fill : true, 
				backgroundColor: "rgba(78, 115, 223, 0.05)",
				borderColor : "rgba(0, 255, 0, 1)",
				lineTension : 0.1,
				data : [
					<?php
						while ($data_arus = mysqli_fetch_array($arus)) 
							{
								echo $data_arus['arus']. ',' ;
							}	

					?>
				]
			  },
			  {
				label : "Daya",
				fill : true, 
				backgroundColor: "rgba(78, 115, 223, 0.05)",
				borderColor : "rgba(135, 206, 250, 1)",
				lineTension : 0.1,
				data : [
					<?php
						while ($data_daya = mysqli_fetch_array($daya)) 
							{
								echo $data_daya['daya']. ',' ;
							}	

					?>
				]
			  },
			  {
				label : "Iradiasi",
				fill : true, 
				backgroundColor: "rgba(78, 115, 223, 0.05)",
				borderColor : "rgba(255, 127, 0, 1)",
				lineTension : 0.1,
				data : [
					<?php
						while ($data_lux = mysqli_fetch_array($lux)) 
							{
								echo $data_lux['lux']. ',' ;
							}	

					?>
				]
			  }
			]
		};

		//option grafik
		var option = {
			showLines : true,
			animation : {
				duration : 1
			}
		};

		//cetak grafik dalam kanvas
		var myLineChart = Chart.Line(canvas, {
			data : data,
			options : option
		});

	</script>
</div>