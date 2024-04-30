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

    //create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    //check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error); //hien thi loi neu ket noi ko thanh cong
    }
    
    // sql to create table
    $sql = "CREATE TABLE student (
                id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                fullname VARCHAR(50) NOT NULL,
                email VARCHAR(50),
                Birthday date,
                reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE
                CURRENT_TIMESTAMP
            )";
    if ($conn->query($sql) === TRUE) {
        echo "Table student created successfully";
    } else {
        echo "Error creating table: " . $conn->error;
    }
    $conn->close();
    ?>
</body>
</html>