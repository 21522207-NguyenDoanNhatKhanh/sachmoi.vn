<?php
session_start();
include 'includes/db.php';
include 'includes/header.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sachmoi.vn</title>
  <link rel="stylesheet" href="style/view_order.css " />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>

<body>

<div class="container">
    <?php
        if (isset($_SESSION['user_id'])) {
            $user_id = $_SESSION['user_id'];

            $user_info = get_user_info($user_id);

            if ($user_info) {
                $username = $user_info['username'];

                echo '<h2>Các đơn hàng của bạn (' . $username . ')</h2>';

                $orders = get_user_orders($user_id);

                if ($orders) {
                    foreach ($orders as $order) {
                        echo '<div class="box">';
                            echo '<ul>';
                            echo '<li>Mã đơn hàng: ' . $order['order_id'] . '</li>';
                            echo '<li>Tổng số tiền: ' . $order['total_amount'] . '</li>';
                            echo '<li>Trạng thái vận chuyển: ' . $order['shipping_status'] . '</li>';
                            echo '<li>Trạng thái thanh toán: ' . $order['payment_status'] . '</li>';
                            echo '<li>Ngày đặt hàng: ' . $order['order_date'] . '</li>';
                            echo '</ul>';
                        echo '</div>';
                    }
                    
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
    include 'includes/footer.php';
    ?>
</div>
</body>
</html>
