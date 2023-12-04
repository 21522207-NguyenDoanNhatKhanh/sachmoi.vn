<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sachmoi.vn</title>
    <link rel="stylesheet" href="style/checkout.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>

<body>
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
        if (!is_sufficient_quantity($_SESSION['cart'])) {
            // echo 'Không đủ số lượng sản phẩm để đặt hàng.';
            echo '<script>alert("Không đủ số lượng sản phẩm để đặt hàng!")</script>';
            // header('Location: cart.php');
            header('refresh:.5; url=cart.php');
            exit();
        }
    }
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['place_order'])) {

        $address = $_POST['address'];
        if ($_POST['shipping-ward'] != '' && $_POST['shipping-district'] != '' && $_POST['shipping-city'] != '')
            $address . ', ' . $_POST['shipping-ward'] . ', ' . $_POST['shipping-district'] . ', ' . $_POST['shipping-city'];
        // $phone = $_POST['phone'];
        $name = $_POST['name'];
        $number = $_POST['number'];

        save_order_to_database($_SESSION['user_id'], $_SESSION['cart'], $name, $number, $address);

        unset($_SESSION['cart']);
        // echo 'Đặt hàng thành công!';
        echo '<script>alert("Đặt hàng thành công!")</script>';
        // header('Location: view_orders.php');
        header('refresh:.5; url=view_orders.php');
        exit();
    }

    ?>


    <?php include 'includes/header.php'; ?>


    <section class="checkform">
        <div class="site-wrapper">
            <div class="container">
                <h2>Thông tin đặt hàng</h2>
                <form action="checkout.php" method="post">
                    <div class="input-box">
                        <label for="">Họ và tên: </label>
                        <input type="text" id="username" name="name" required>
                    </div>
                    <div class="input-box">
                        <label for="">Số điện thoại: </label>
                        <input type="tel" oninput="this.value = this.value.replace(/[^0-9]/g, '')" name="number"
                            required>
                    </div>
                    <div class="input-box">
                        <label for="shipping-city">Tỉnh thành: </label>
                        <select required id="shipping-city" name="shipping-city" autocomplete="country-name"
                            onchange="updateHiddenText('shipping-city', 'shipping-city-text')">
                            <option value="">Chọn tỉnh thành</option>
                        </select>
                        <ion-icon name="navigate-outline"></ion-icon>
                    </div>
                    <div class="input-box">
                        <label for="shipping-district">Quận huyện: </label>
                        <select required id="shipping-district" name="shipping-district" autocomplete="country-name"
                            onchange="updateHiddenText('shipping-district', 'shipping-district-text')">
                            <option value="">Chọn quận huyện</option>
                        </select>
                    </div>
                    <div class="input-box">
                        <label for="shipping-ward">Phường xã: </label>
                        <select required id="shipping-ward" name="shipping-ward" autocomplete="country-name"
                            onchange="updateHiddenText('shipping-ward', 'shipping-ward-text')">
                            <option value="">Chọn phường xã</option>
                        </select>
                    </div>
                    <div class="input-box">
                        <label for="address">Địa chỉ: </label>
                        <input type="text" name="address" required>
                    </div>
                    <button type="submit" name="place_order" class="btn">Đặt hàng</button>
                </form>
            </div>
        </div>
    </section>
    <!-- ionic icons -->
    <?php include 'includes/footer.php'; ?>

    <script src="js/functions.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>

<script>
    function updateHiddenText(selectId, hiddenTextId) {
        var selectedOption = document.querySelector('#' + selectId + ' option:checked');
        var hiddenTextField = document.getElementById(hiddenTextId);

        if (selectedOption) {
            hiddenTextField.value = selectedOption.text;
        } else {
            hiddenTextField.value = '';
        }
    }
    document.addEventListener("DOMContentLoaded", function () {
        addAddress();
    });
</script>