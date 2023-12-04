<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sachmoi.vn</title>
    <link rel="stylesheet" href="style/view_order.css " />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>

<body>
    <?php
    session_start();
    include 'includes/db.php';
    include 'includes/header.php';
    ?>
    <section class="view-orders" id="view-orders">
        <div class="site-wrapper">
            <!-- <div class="container"> -->
            <div class="container_view">
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
                            echo '<div class="box">';
                            echo '<p>Bạn chưa có đơn hàng nào.</p>';
                            echo '</div>';
                        }
                    } else {
                        echo 'Lỗi: Không thể lấy thông tin người dùng.';
                    }
                } else {
                    header('Location: login.php');
                    exit();
                }
                ?>
            </div>
            <!-- </div> -->
        </div>
    </section>

    <?php include 'includes/footer.php'; ?>
    <!-- ionic icon -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <!-- scripts -->
    <script src="js/homepage.js"></script>
</body>

</html>