<?php
    ob_start();
    session_start();
    if (isset($_SESSION['errorInputForm']) && $_SESSION['errorInputForm'] != "") {
        $statusChange = $_SESSION['errorInputForm'];
        unset($_SESSION['errorInputForm']);
    }
    if (isset($_SESSION['correctChangePasswd']) && $_SESSION['correctChangePasswd'] != "") {
        $statusChange = $_SESSION['correctChangePasswd'];
        unset($_SESSION['correctChangePasswd']);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa mật khẩu</title>
    <!--Làm tí Bootstrap 5 và FontAwesome-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/ae360af17e.js" crossorigin="anonymous"></script>
</head>
<body class="bg-secondary">
    <section>
        <div class="container-fluid mt-5 pt-4">
            <div class="row">
                <div class="form col-12 col-sm-5 col-md-4 m-auto">
                    <div class="card border-0 shadow">
                        <div class="card-body mx-5">
                            <h3 class="text-center text-primary fw-bold mb-4">Sửa mật khẩu</h3>
                            <form class="mx-3" action="sua_mk.php" method="post">
                                <label class="fw-bold" for="loginInputUserName">Username</label>
                                <input class="form-control my-2 border-secondary" type="text" name="username" id="loginInputUserName"/>
                                <label class="fw-bold" for="loginInputOldPassword">Old Password</label>
                                <input class="form-control my-2 border-secondary" type="password" name="oldpasswd" id="loginInputOldPassword"/>
                                <label class="fw-bold" for="loginInputNewPassword">New Password</label>
                                <input class="form-control my-2 border-secondary" type="password" name="newpasswd" id="loginInputNewPassword"/>
                                <label class="fw-bold" for="loginInputConfirmPassword">Confirm Password</label>
                                <input class="form-control my-2 border-secondary" type="password" name="passwdConfirm" id="loginInputConfirmPassword"/>
                                <div class="text-center mt-4">
                                    <input type="submit" name="btnChangePasswd" value="Sửa mật khẩu" class="btn btn-primary" />
                                    <a href="login.php" class="nav-link mt-3 text-dark">
                                        <i class="fa-solid fa-rotate-left pe-2"></i>Về trang đăng nhập
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        var statusChange = "<?=$statusChange;?>";
        if (statusChange != "") alert(statusChange);
    </script>
</body>
</html>