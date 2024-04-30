<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";

    //create connection
    $conn = new mysqli($servername, $username, $password);

    //check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error); //hien thi loi neu ket noi ko thanh cong
    }
    echo "Connection successfully";
    ?>
</body>
</html>