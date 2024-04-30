<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    $t = date("H");
    echo 'Bay gio la: '.$t.' gio';
    $s = '';
    if ($t < 11) {
        $s = "sang";
    } elseif ($t < 17) {
        $s = "chieu";
    } else {
        $s = "toi";
    }
    echo '<br> Chuc buoi '.$s.' vui ve!'; 
    ?>
</body>
</html>