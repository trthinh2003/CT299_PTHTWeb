<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    function giai_thua($x) {
        $gt = 1;
        if ($x == 0 || $x == 1) return $gt;
        else if ($x > 1) {
            for ($i = 1; $i < $x; $i++) {
                $gt *= $i;
            }
        }
        //truong hop x la so am
        else {
            $gt = -1;
            echo "(khong the tinh giai thua am...) ";
        }
        return $gt;
    }
    echo "10! = " .  giai_thua(10);
    ?>


</body>
</html>