<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>
<body>
    <?php
//koneksi database
  $host = "localhost";
  $user = "root";
  $pass = "";
  $conn = mysqli_connect($host, $user, $pass,"dbmonitoring");
 //mengambil isi tabel tb_sensor
  $queri = ("select * from tb_sensor order by id desc limit 5");
  $tbl_nrf = mysqli_query ($conn, $queri);
      echo " <table class = 'table table-bordered' id='dataTable' width='100%' cellspacing='0'>
  <thead class='table-dark'>
    <tr>
      <th scope='col'>ID</th>
      <th scope='col'>Tegangan</th>
      <th scope='col'>Arus</th>
      <th scope='col'>Daya</th>
      <th scope='col'>Iradiasi</th>
      <th scope='col'>Tanggal</th>
    </tr>
  </thead>";

  $nomor=1;
  while ($data = mysqli_fetch_array($tbl_nrf)) {
    echo "<tbody>
    <tr>
      <th scope='row'>$nomor</th>
      <td>$data[1]</td>
      <td>$data[2]</td>
      <td>$data[3]</td>
      <td>$data[4]</td>
      <td>$data[5]</td>
    </tr>
    ";
    $nomor++;
  }
  echo "
    </tbody>
    </table>
  ";

?>
</body>
</html>
<!-- Script untuk memanggil data dari database -->
