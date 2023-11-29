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
                <form action="">
                <div class="input-box">
                    <input type="text" require placeholder="Họ và tên" />
                    <i><ion-icon name="person-outline"></ion-icon></i>
                </div>              
                <div class="input-box">
                    <input type="tel" require pattern="[0-0]{1}-[0-9]{3}-[0-9]{3}-[0-9]{3}" placeholder="Số điện thoại" />
                    <i><ion-icon name="call-outline"></ion-icon></i>
                </div>
                <div class="input-box">
                    <input type="date" require placeholder="Sinh nhật" />
                </div>
                <div class="input-box">
                    <input type="text" require placeholder="Địa chỉ" />
                    <i><ion-icon name="location-outline"></ion-icon></i>
                </div>
                <div class="input-box">
                    <input type="email" require placeholder="Email" />
                    <i><ion-icon name="mail-outline"></ion-icon></i>
                </div>
                <div class="input-box">
                    <input type="email" require placeholder="Xác nhận email" />
                    <i><ion-icon name="checkmark-outline"></ion-icon></i>
                </div>             
                <button type="submit" class="btn">Gửi</button>              
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
        <script src="js/homepage.js"></script>
    </body>
</html>