<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hasil Captcha</title>
</head>

<body>
    <div class="kotak">
        <?php
        if (isset($_GET['pesan'])) {
            if ($_GET['pesan'] == "salah") {
                echo "<p>Captcha tidak sesuai.</p>";
            }
        }
        ?>
        <h1>hallo</h1>
    </div>
</body>

</html>