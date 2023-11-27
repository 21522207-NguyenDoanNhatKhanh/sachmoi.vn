<?php
include 'includes/db.php';
session_start();

if (isset($_SESSION['user_id'])) {
    $user_id = $_SESSION['user_id'];

    $user_info = get_user_info($user_id);

    if ($user_info) {
        $username = $user_info['username'];

        echo '<h2>Các đơn hàng của ' . $username . '</h2>';

        $orders = get_user_orders($user_id);

        if ($orders) {
            echo '<ul>';
            foreach ($orders as $order) {
                echo '<li>';
                echo 'Mã đơn hàng: ' . $order['order_id'] . '<br>';
                echo 'Tổng số tiền: ' . $order['total_amount'] . '<br>';
                echo 'Trạng thái vận chuyển: ' . $order['shipping_status'] . '<br>';
                echo 'Trạng thái thanh toán: ' . $order['payment_status'] . '<br>';
                echo 'Ngày đặt hàng: ' . $order['order_date'] . '<br>';
                
                echo '</li>';
            }
            echo '</ul>';
        } else {
            echo '<p>Bạn chưa có đơn hàng nào.</p>';
        }
    } else {
        echo 'Lỗi: Không thể lấy thông tin người dùng.';
    }
} else {
    header('Location: login.php');
    exit();
}
?>
