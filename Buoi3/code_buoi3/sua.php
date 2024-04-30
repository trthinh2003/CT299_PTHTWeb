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
    $id = $_POST['id'];
    $date = date_create($_POST["birth"]);
    $sql = "UPDATE student set fullname = '".$_POST['fullname']."', email
    = '".$_POST['email']."',birthday = '".$date ->format('Y-m-d')."'";
    $sql = $sql. " WHERE ID='".$id."'";

    if ($conn->query($sql) == TRUE) {
        header('Location: taidulieu_bang1.php');
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
    ?>
</body>
</html>