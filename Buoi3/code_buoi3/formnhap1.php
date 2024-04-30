<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "qlsv";
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $result = $conn->query("SELECT name_major FROM major");
    //Tiến hành duyệt $result, fetch nó vào biến $result_all
    if ($result->num_rows > 0) {
        $result_all = $result->fetch_all(MYSQLI_ASSOC);
    }
    //Chuẩn bị 1 biến html dạng của thẻ select option để tiến hành nhúng vào mã html
    $selectOpt = "";
    //Duyệt $result_all
    foreach ($result_all as $row) {
        $selectOpt .= '<option name="major_name" value="'.$row['name_major'].'">'.$row['name_major'].'</option>';
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="luu1.php" method="post">
    Name: <input type="text" name="name"><br>
    E-mail: <input type="text" name="email"><br>
    Birthday: <input type="date" name="birth"><br>
    Major name: <select name="major_name" id="">
                    <?=$selectOpt;?>
                </select><br>
    <input type="submit">
    </form>
</body>
</html>