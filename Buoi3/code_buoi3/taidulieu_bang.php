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
    $sql = "SELECT * FROM student";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        //Cach 1: show du lieu nhu bien
        //show gia tri trong mang
        print_r($result);
        echo '<br>';
        echo '<br>';

        //Cach 2: show theo tung dong voi for
        while ($row = $result->fetch_assoc()) {
            echo "id: " . $row["id"]. " - Hoten: " . $row["fullname"]. " " . $row["email"].' ngaysinh: '.$row['Birthday']. "<br>";
        }
        echo '<br>';
        echo '<br>';
        //xoa ket qua cu tu o tren
        $result -> free_result();

        //Cach 3: trinh bay voi bang html
        $result = $conn->query($sql);
        $result_all = $result->fetch_all();
        print_r($result_all);
        echo "<table border=1><tr><th>ID</th><th>Hoten</th><th>email</th><th>ngaysinh</th></tr>";
        foreach ($result_all as $row) {
            $date = date_create($row[3]);
            echo "<tr><td>" . $row[0]. "</td><td>" . $row[1]. "</td><td>" . $row[2]. "</td><td>" . $date->format('d-m-Y') . "</td>></tr>";
        }
        echo "</table>";

        //Cach 4:
        while ($row = $result->fetch_row()) {
            printf("%s (%s)\n", $row[0], $row[1]);
        }
        $result->free_result();
        
    } else {
        echo "0 ket qua tra ve";
    }
    $conn->close();
    ?>
</body>
</html>