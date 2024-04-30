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
        die("Connection failed: " . $conn->connect_error);
    }
    $date = date_create($_POST["birth"]);
    $id_major = 0;
    //Insert vào bảng major tên chuyên ngành trước
    $conn->query("INSERT IGNORE INTO major(name_major) VALUES('".$_POST['major_name']."')");
    //Lấy id dựa vào tên chuyên ngành vừa insert vào bảng major
    $result = $conn->query("SELECT id FROM major WHERE name_major LIKE '".$_POST['major_name']."'");
    //Tiến hành duyệt $result, fetch nó vào biến $id_major
    if ($result->num_rows > 0) {
        $row = $result->fetch_row();
        $id_major = $row[0];
    }
    //Tiến hành insert vào bảng student
    $sql = "INSERT IGNORE INTO student(fullname, email, birthday, major_id) 
                VALUES('".$_POST["name"]."', '".$_POST["email"]."', '".$date->format('Y-m-d') ."', '".$id_major."')";
    if ($conn->query($sql) == TRUE) {
        // echo "Them sinh vien thanh cong";
        //neu thuc hien thanh cong, chung ta se cho di chuyen den taidulieu_bang1.php
        header('Location: taidulieu_bang1.php');
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
    ?>
</body>
</html>