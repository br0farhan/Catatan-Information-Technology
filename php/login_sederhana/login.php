<?php 
include 'koneksi.php';
 
$username = $_POST['username'];
$password = $_POST['password'];


//die("KONEKSI ". $conn);
$query = mysqli_query($conn, "select * from admin where username='$username' and password='$password'");
$cek = mysqli_num_rows($query);

echo $cek;


