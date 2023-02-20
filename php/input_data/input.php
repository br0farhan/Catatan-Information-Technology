<?php 
include 'database.php';
$makanan = $_POST['makanan'];
$jumlah_dipilih = count($makanan);
 
for($x=0;$x<$jumlah_dipilih;$x++){
	$conn = mysqli_query($conn, "INSERT INTO makanan values(null,'$makanan[$x]')");
}
 
header("location:index.php");
 
?>