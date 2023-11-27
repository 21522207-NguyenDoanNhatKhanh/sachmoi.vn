<?php
include '../includes/db.php';
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $product_id = $_POST['product_id'];

    if (isset($_POST['quantity'])) {
        $quantity = $_POST['quantity'];

        $_SESSION['cart'][$product_id] = $quantity;

        $product = get_book_details($product_id);
        $price = $product['price'];
        $totalPrice = $quantity * $price;

        echo json_encode(['status' => 'success', 'price' => $price, 'totalPrice' => $totalPrice]);
        exit();
    } elseif (isset($_POST['remove'])) {
        unset($_SESSION['cart'][$product_id]);
        echo 'success';
        exit();
    }
}
?>
