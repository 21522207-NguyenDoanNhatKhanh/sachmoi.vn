<!-- checkout.php -->
<?php
session_start();
include 'includes/db.php';

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

if (empty($_SESSION['cart'])) {
    echo 'Giỏ hàng của bạn đang trống.';
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['checkout'])) {
    // Kiểm tra số lượng sản phẩm trước khi đặt hàng
    if (is_sufficient_quantity($_SESSION['cart'])) {
        // Hiển thị form nhập thông tin đặt hàng
        include 'checkout_form.php';
    } else {
        echo 'Không đủ số lượng sản phẩm để đặt hàng.';
        exit();
    }
}

?>
