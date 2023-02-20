<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Membuat Login Sederhana dengan PHP dan MYSQL |</title>
</head>
<body>
    <h1>Membuat Login Sederhana dengan PHP dan MYSQL</h1>
    <H3>Halaman login sederhana</H3>
        <form action="login.php" method="post">
            <table>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="login" value="Log In"></td>
                </tr>
            </table>
        </form>
</body>
</html>