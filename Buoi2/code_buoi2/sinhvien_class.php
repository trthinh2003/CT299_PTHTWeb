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
    class sinhvien {
        public $mssv;
        public $hoten;
        public $ngaysinh;
        //cac phuong thuc xay dung
        function __construct($mssv, $hoten, $ngaysinh) { //phuong thuc xay dung co tham so
            $this->mssv = $mssv;
            $this->hoten = $hoten;
            $this->ngaysinh = $ngaysinh;
        }
        //cac ham get
        function get_mssv() {
            return $this->mssv;
        }
        function get_hoten() {
            return $this->hoten;
        }
        function get_ngaysinh() {
            return $this->ngaysinh;
        }
        //cac ham set
        function set_mssv($mssv) {
            $this->mssv = $mssv;
        }
        function set_hoten($hoten) {
            $this->hoten = $hoten;
        }
        function set_ngaysinh($ngaysinh) {
            $this->ngaysinh = $ngaysinh;
        }
        //ham tinh tuoi
        function tinhTuoi($ngaysinh) {
            $namhientai = date("Y");
            $namsinh = substr($ngaysinh, 6);
            return $namhientai - (int)$namsinh;
        }
    }
    //Khai bao bien sinhvien
    // $sv = new sinhvien();
    $thinh = new sinhvien("B2110029", "Huynh Nguyen Truong Thinh", "11-01-2003");
    echo "Thong tin sinh vien:<br>";
    echo "MSSV: " . $thinh->get_mssv() . "<br>";
    echo "Ho va ten: " . $thinh->get_hoten() . "<br>";
    echo "Ngay sinh: " . $thinh->get_ngaysinh() . "<br>";
    echo "Tuoi hien tai: " . $thinh->tinhTuoi($thinh->get_ngaysinh()) . ".";
    ?>
</body>
</html>