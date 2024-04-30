<?php
    ob_start();
    session_start();
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "qlbanhang";
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    if (isset($_POST['btnChangePasswd']) && $_POST['btnChangePasswd']) {
    //isset($_POST['btnChangePasswd']: xác nhận xem cái thẻ input 'btnChangePasswd' có tồn tại không
        $username = $_POST['username'];
        $oldpasswd = $_POST['oldpasswd'];
        $newpasswd = $_POST['newpasswd'];
        $passwdConfirm = $_POST['passwdConfirm'];
    }
    $cacMK = $conn->query("SELECT password FROM customers 
                           WHERE email LIKE '".$username."' 
                           AND password LIKE '".md5($oldpasswd)."'");
    if ($cacMK->num_rows > 0) { //TH có mật khẩu cũ khớp với mật khẩu trong CSDL
        if ($newpasswd !== $passwdConfirm) { //Tiến hành xét 2 dữ liệu mật khẩu mới và xác nhận mật khẩu có khớp không
            $_SESSION['errorInputForm'] = "New Password phải khớp với Confirm Password!";
            header('Location: form_sua_mk.php');
        } else { //TH New Password đã khớp với Confirm Password, tiến hành gửi thông báo đổi mật khẩu thành công 
                //và cập nhật lại mật khẩu trong CSDL
            $conn->query("UPDATE customers SET password = '".md5($newpasswd)."' WHERE email LIKE '".$username."'");
            $_SESSION['correctChangePasswd'] = "Đổi mật khẩu thành công!";
            header('Location: form_sua_mk.php');
        }
    } else { //TH mật khẩu cũ nhập vào không khớp với mật khẩu trong CSDL
        $_SESSION['errorInputForm'] = "Mật khẩu nhập sai!";
        header('Location: form_sua_mk.php');
    }
    $conn->close();
?>