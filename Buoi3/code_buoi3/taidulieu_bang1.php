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
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $sql = "SELECT * 
            FROM student, major
            WHERE student.major_id = major.id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $result = $conn->query($sql);
        $result_all = $result->fetch_all(MYSQLI_ASSOC);
    ?>
        <h1>Bang du lieu sinh vien</h1>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>Họ tên</th>
                <th>Email</th>
                <th>Ngày sinh</th>
                <th>Mã chuyên ngành</th>
                <th>Tên chuyên ngành</th>
                <th colspan="2">Hành động</th>
            </tr>
        <?php
        // output data of each row
        foreach ($result_all as $row) {
            $date = date_create($row['Birthday']);
            echo "<tr>
                    <td>".$row["id"]."</td>
                    <td>".$row["fullname"]."</td>
                    <td>".$row["email"]."</td>
                    <td>".$date->format('d-m-Y')."</td>
                    <td>".$row['major_id']."</td>
                    <td>".$row['name_major']."</td>
                    <td>";
        ?>
        <form method="post" action="xoa.php">
        <input type="submit" name="action" value="Xóa"/>
        <input type="hidden" name="id" value="<?php echo $row['id']; ?>"/>
        </form>

        <?php
        echo "</td>";
        echo "<td>";
        ?>

        <form method="post" action="form_sua.php">
        <input type="submit" name="action" value="Sửa"/>
        <input type="hidden" name="id" value="<?php echo $row['id']; ?>"/>
        </form>

        <?php
        echo "</td></tr>";
        }
    echo "</table>";
    } else {
        echo "0 ket qua tra ve";
    }
    $conn->close();
        ?>
</body>
</html>