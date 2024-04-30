<!DOCTYPE html>
<html lang="en">
<body>
    <?php
    session_start();
    ?>

    <?php
    $conn = new mysqli("localhost", "root", "", "qlbanhang");
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    session_destroy();
    echo "Đăng xuất thành công, đang trở về trang đăng nhập...";
    header("Refresh: 3;url=login.php");
    ?>
</body>
</html>