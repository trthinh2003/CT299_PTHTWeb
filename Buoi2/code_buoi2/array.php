<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    //khai bao 1 mang chua 3 gia tri
    $hoten = array("Nguyen", "Thanh", "Hai");
    //truy cap cac gia tri trong mang
    echo "Ho: " . $hoten[0] . ", Chu lot: " . $hoten[1] . "; va ten: " . $hoten[2] . ".";
    //tra ve so phan tu trong bang
    echo count($hoten);
    //dung for de quet qua cac gia tri trong mang
    $arrlength = count($hoten);
    for($x = 0; $x < $arrlength; $x++) {
        echo $hoten[$x];
        echo "<br>";
    }

    //Mang Associative Arrays: gom key => gia tri
    $age = array("Peter"=>"35", "Ben"=>"37", "Joe"=>"43");
    echo "Peter is " . $age['Peter'] . " year old.";

    //Mang da chieu
    $cars = array (
        array("Volvo",22,18),
        array("BMW",15,13),
        array("Saab",5,2),
        array("Land Rover",17,15)
    );
    echo $cars[0][0].": In stock: ".$cars[0][1].", sold:
    ".$cars[0][2]."<br>";
    echo $cars[1][0].": In stock: ".$cars[1][1].", sold:
    ".$cars[1][2]."<br>";
    echo $cars[2][0].": In stock: ".$cars[2][1].", sold:
    ".$cars[2][2]."<br>";

    echo $cars[3][0].": In stock: ".$cars[3][1].", sold:
    ".$cars[3][2]."<br>";
    // hien thi mang da chieu qua for
    for ($row = 0; $row < 4; $row++) {
        echo "<p><b>Row number $row</b></p>";
        echo "<ul>";
        for ($col = 0; $col < 3; $col++) {
            echo "<li>".$cars[$row][$col]."</li>";
        }
        echo "</ul>";
    }
    ?>
</body>
</html>