<!DOCTYPE html>
<html>
<head>
	<title>Input Banyak Data Ke Database Dengan PHP | www.malasngoding.com</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h1>Input Banyak Data Ke Database Dengan PHP | www.malasngoding.com</h1>
	<h2>Data Makanan</h2>
	<table border="1">
		<tr>
			<th>No</th>
			<th>Nama Makanan</th>
		</tr>
		<?php 
		
		include "database.php";
		$data = mysqli_query($conn,"select * from makanan");
		$no = 1;
		while($d = mysqli_fetch_array($data)){
		?>
		<tr>
			<td><?php echo $no++; ?></td>
			<td><?php echo $d['makanan']; ?></td>		
		</tr>
		<?php } ?>
	</table>
	<br/>
	<h2>Input Banyak Data</h2>
	
	<form method="post" action="input.php">		
	<table>
		<tr>
			<td>
				<input type="checkbox" name="makanan[]" value="Nasi Goreng">
			</td>
			<td>
				Nasi Goreng
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" name="makanan[]" value="Mie Goreng">
			</td>
			<td>
				Mie Goreng
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" name="makanan[]" value="Bakso">
			</td>
			<td>
				Bakso
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" name="makanan[]" value="Soto Ayam">
			</td>
			<td>
				Soto Ayam
			</td>
		</tr>
		<tr>
			<td>
				<input type="checkbox" name="makanan[]" value="Sate Padang">
			</td>
			<td>
				Sate Padang
			</td>
		</tr>
		<tr>
			<td>				
			</td>
			<td>
				<input type="submit" value="Input">
			</td>
		</tr>
	</table>
	</form>
 
</body>
</html>