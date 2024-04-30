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
    $dbname = "qlsv";
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed" . $conn->connect_error);
    }
    $id = $_POST['id'];
    $sql = "SELECT * FROM student WHERE ID = '".$id."'";

    $result = $conn->query($sql);
    $row = $result->fetch_assoc();
    ?>

    <?php print_r($row)?>

    <form action="sua.php" method="post">
    ID: <input type="text" name="id" value="<?php echo $row['id'];?>"><br>
    Name: <input type="text" name="fullname" value="<?php echo $row['fullname']?>"><br>
    E-mail: <input type="text" name="email" value="<?php echo $row['email']?>"><br>
    Birthday: <input type="date" name="birth" value="<?php echo $row['Birthday'];?>"><br>
    <input type="submit">
    </form>
</body>
</html>