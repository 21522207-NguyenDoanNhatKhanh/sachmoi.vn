<?php
include 'includes/db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['save_sub'])) {
    $full_name = $_POST['full_name'];
    $phone_number = $_POST['phone_number'];
    $birthday = $_POST['birthday'];
    $address = $_POST['address'];
    $email = $_POST['email'];
    $confirmed_email = $_POST['confirmed_email'];
    
    save_subscriber($full_name, $phone_number, $birthday, $address, $email);
    echo '<script>alert("Đăng ký thành công!")</script>';
    header('refresh:.5; url=index.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sachmoi.vn</title>
        <link rel="stylesheet" href="style/contact.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    </head>
    
    <body>
        <?php 
            include 'includes/header.php'; 
        ?>
        <!-- contact form starts -->
        <section class="contact" id="contact">
        <div class="container">
            <div class="offer">
            <h2>Ưu đãi cực lớn!</h2>
            <div>
                <p>Nhận những thông báo khi có các đợt sales diễn ra</p>
                <p>Miễn phí đổi trả sách</p>
                <p>Voucher tự động mỗi tháng</p>
                <p>Tích điểm đổi quà</p>
                <p>Tri ân khách hàng mỗi dịp sinh nhật</p>
            </div>
            </div>
            <div class="wrapper">
            <div class="contact-form">
                <h2>Nhận ưu đãi</h2>
                <form action="contact.php" method="POST">
                <div class="input-box">
                    <input type="text" name="full_name" required placeholder="Họ và tên" />
                    <i><ion-icon name="person-outline"></ion-icon></i>
                </div>              
                <div class="input-box">
                    <input type="tel" name="phone_number" required pattern="[0-0]{1}[0-9]{3}[0-9]{3}[0-9]{3}" placeholder="Số điện thoại" />
                    <i><ion-icon name="call-outline"></ion-icon></i>
                </div>
                <div class="input-box">
                    <input type="date" name="birthday" required placeholder="Sinh nhật" />
                </div>
                <div class="input-box">
                    <input type="text" name="address" required placeholder="Địa chỉ" />
                    <i><ion-icon name="location-outline"></ion-icon></i>
                </div>
                <div class="input-box">
                    <input type="email" name="email" required placeholder="Email" oninput="validateForm()"/>
                    <i><ion-icon name="mail-outline"></ion-icon></i>
                </div>
                <div class="input-box">
                    <input type="email" name="confirmed_email" required placeholder="Xác nhận email" oninput="validateForm()"/>
                    <i><ion-icon name="checkmark-outline"></ion-icon></i>
                </div>             
                        <div id="email-error" style="color: red; margin-bottom:2px;"></div>
                <button id="submitButton" type="submit" name="save_sub" class="btn" disabled>Gửi</button>              
                </form>
            </div>
            </div>
        </div>
        </section>
        <!-- contact form ends -->
        <?php 
            include 'includes/footer.php';
        ?>
        <!-- ionic icon -->
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
        <!-- scripts -->
        <script>
            function validateForm() {
                var email = document.getElementsByName('email')[0].value;
                var confirmedEmail = document.getElementsByName('confirmed_email')[0].value;

                if (email !== confirmedEmail) {
                    document.getElementById('email-error').innerHTML = 'Email và xác nhận email không trùng khớp.';
                    document.getElementById('submitButton').disabled = true;
                    return false; 
                }

                document.getElementById('email-error').innerHTML = '';
                document.getElementById('submitButton').disabled = false; 
                return true;
            }

        </script>
    </body>
</html>