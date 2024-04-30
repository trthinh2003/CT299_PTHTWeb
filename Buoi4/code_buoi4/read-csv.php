<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $csv = array();
    $name_file = 'cus.csv';
    $lines = file($name_file, FILE_IGNORE_NEW_LINES);
    //dua du lieu tu file csv vao mang:
    foreach ($lines as $key => $value) {
        $csv[$key] = str_getcsv($value);
    }
    //in mang
    echo '<pre>';
    print_r($csv);
    echo '</pre>';
    ?>
</body>
</html>