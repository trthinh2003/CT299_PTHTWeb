<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $array_a = array(344, 224, 223, 7737, 9922, -828);
    $array_b = array(-344, -324, 123, 773, -9922, 828);
    echo "Mang 1: {";
    for($i = 0; $i < count($array_a) - 1; $i++) {
        echo $array_a[$i] . ", ";
    }
    echo $array_a[count($array_a) - 1] . "} <br>";
    echo "Mang 2: {";
    for($i = 0; $i < count($array_b) - 1; $i++) {
        echo $array_b[$i] . ", ";
    }
    echo $array_b[count($array_b) - 1] . "} <br>";
    function sum_two_array($array_a, $array_b) {
        $result_array = [];
        if (count($array_a) == count($array_b)) {
            foreach ($array_a as $key => $value) {
                $result_array[$key] = $value + (isset($result_array[$key]) ? $result_array[$key] : 0); //ham isset ktra 1 bien co rong hay khong
            }
            foreach ($array_b as $key => $value) {
                $result_array[$key] = $value + (isset($result_array[$key]) ? $result_array[$key] : 0);
            }
            $result_array_length = count($result_array);
            echo "{";
            for($i = 0; $i < $result_array_length - 1; $i++) {
                echo $result_array[$i] . ", ";
            }
            echo $result_array[$result_array_length - 1] . "}"; 
        }
        else {
            echo "2 mang khong cung do dai...";
        }
    }
    echo "Ket qua cong 2 mang: ";
    sum_two_array($array_a, $array_b);
    ?>
</body>
</html>