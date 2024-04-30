<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    //khai bao class Fruit
    class Fruit {
        public $name;
        public $color;
        //gan gia tri cho thuoc tinh
        function set_name($name) {
            $this->name = $name;
        }
        //tra ve gia tri cho thuoc tinh
        function get_name() {
            return $this->name;
        }
        //phuong thuc xay dung
        function __construct($name) {
            $this->name = $name;
        }
        // phuong thuc huy
        function __destruct() {
            echo "The fruit is  {$this->name}.";
        }
    }
    $apple = new Fruit("Apple");
    $banana = new Fruit("Banana");

    echo $apple->get_name();
    echo "<br>";
    echo $banana->get_name();
    ?>
</body>
</html>