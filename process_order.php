<?php
session_start();
include 'includes/db.php';

if (!isset($_SESSION['user_id'])) {
    echo 'Vui lòng đăng nhập để đặt hàng.';
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['place_order'])) {
    if (!is_sufficient_quantity($_SESSION['cart'])) {
        echo 'Không đủ số lượng sản phẩm để đặt hàng.';
        exit();
    }

    $address = $_POST['address'];
    if ($_POST['shipping-ward'] != '' && $_POST['shipping-district'] != '' && $_POST['shipping-city'] != '')
        $address . ', ' . $_POST['shipping-ward'] . ', ' . $_POST['shipping-district'] . ', ' . $_POST['shipping-city'];
    // $phone = $_POST['phone'];
    $name = $_POST['name'];
    $number = $_POST['number'];

    save_order_to_database($_SESSION['user_id'], $_SESSION['cart'], $name, $number, $address);

    unset($_SESSION['cart']);
    echo 'Đặt hàng thành công!';
}
