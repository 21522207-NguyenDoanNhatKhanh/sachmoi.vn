<?php
include '../includes/db.php';
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = [];
    }

    $product_id = $_POST['product_id'];
    $quantity = 1; 

    if (is_available_quantity($product_id, $quantity)) {
        if (isset($_SESSION['cart'][$product_id])) {
            $_SESSION['cart'][$product_id] += $quantity;
        } else {
            $_SESSION['cart'][$product_id] = $quantity;
        }

        echo 'success';
        exit();
    } else {
        echo 'error_insufficient_quantity';
        exit();
    }
}
