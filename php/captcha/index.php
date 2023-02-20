<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Membuat Captcha</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
    <h1>Cara Membuat CAPTCHA</h1>
    <div class="kotak">
      
        <p>isikan captcha</p>
        <form action="periksa_captcha.php" method="post">
            <table align="center">
                <tr>
                    <td>Captcha</td>
                    <td><img src="captcha.php" alt="gambar" /> </td>
                </tr>
                <td>Isikan captcha </td>
                <td><input name="nilaiCaptcha" value="" /></td>
                <tr>
                    <td><input type="submit" value="Cek Captcha"></td>
                </tr>
            </table>
        </form>
    </div>
</body>

</html>