<?php
session_start();
include 'includes/header.php';


if (isset($_SESSION['user_id'])) {
    header('Location: index.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    require 'includes/db.php';

    $username = $_POST['username'];
    $password = $_POST['password'];

   //  require 'functions.php';

    if (login_user($username, $password)) {
        header('Location: index.php');
        exit();
    } else {
        $error_message = 'Tên đăng nhập hoặc mật khẩu không chính xác.';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sachmoi.vn</title>
    <link rel="stylesheet" href="style/login.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    />
  </head>
  <body>


 <!-- to-the-top button -->
 <button class="to-the-top">
      <a href="#top"
        ><i class="fa-solid fa-arrow-up"></i
      ></a>
    </button>
    <!-- bottom navbar -->
    <nav class="bottom-navbar">
      <a href="../HomePage/homepage.html" class="fas fa-home"></a>
      <a href="../Catalog/catalog.html" class="fas fa-list"></a>
      <a href="../Products/HotSales/hotsales.html" class="fas fa-fire"></a>
      <a href="../AboutUs/aboutus.html" class="fas fa-circle-info"></a>
      <a href="../Contact/contact.html" class="fa-solid fa-ticket"></a>
    </nav>
    <!-- breadscrumb -->
    <ul class="breadcrumb">
      <li><a href="../HomePage/homepage.html">Trang chủ</a></li>
      <li>Đăng nhập</li>
    </ul>
    <!-- login form starts -->
    <section class="login" id="login">
      <div class="container">
        <div class="offer">
          <h2>Quyền lợi thành viên</h2>
          <div>
            <p>Vận chuyển siêu tốc</p>
            <p>Miễn phí đổi trả sách</p>
            <p>Voucher mỗi tháng</p>
            <p>Tích điểm đổi quà</p>
          </div>
        </div>
        <div class="wrapper">
          <div class="login-form">
            <h2>Đăng nhập</h2>    
             <?php if (isset($error_message)): ?>
        <p style="color: red;"><?php echo $error_message; ?></p>
    <?php endif; ?>
            <form action="login.php" method="POST">
              <div class="input-box">
                <input type="text"  id="username" name="username" required placeholder="Tên đăng nhập" />
                <i><ion-icon name="person-outline"></ion-icon></i>
              </div>
              <div class="input-box">
                <input type="password" id="password" name="password" required placeholder="Mật khẩu" />
                <i><ion-icon name="lock-closed-outline"></ion-icon></i>
              </div>
              <div class="remember-forgot">
                <label><input type="checkbox" />Ghi nhớ đăng nhập</label>
                <a href="../ForgotPassword/forgot-password.html">
                  Quên mật khẩu?
                </a>
              </div>
              <button type="submit" class="btn">Đăng nhập</button>
              <div class="register-link">
                <p>
                  Không có tài khoản?
                  <a href="register.php">Đăng ký</a>
                </p>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>



    


      <?php include 'includes/footer.php'; ?>

     <!-- ionic icon -->
     <script
      type="module"
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"
    ></script>
    <!-- scripts -->
    <script src="login.js"></script>
  </body>
</html>
