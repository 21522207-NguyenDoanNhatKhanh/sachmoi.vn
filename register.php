<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sachmoi.vn</title>
  <link rel="stylesheet" href="style/register.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>

<body>
  <?php
  ob_start();
  session_start();
  include 'includes/header.php';

  if (isset($_SESSION['user_id'])) {
    header('Location: index.php');
    exit();
  }

  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    require 'includes/db.php';

    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    //  require 'functions.php';
  
    if (register_user($username, $email, $password)) {
      header('Location: login.php');
      exit();
    } else {
      $error_message = 'Đăng ký không thành công.';
    }
  }
  ob_end_flush();
  ?>



  <!-- breadscrumb -->
  <ul class="breadcrumb">
    <li><a href="index.php">Trang chủ</a></li>
    <li>Đăng ký</li>
  </ul>
  <!-- register form starts -->
  <section class="register" id="register">
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
        <div class="register-form">
          <h2>Đăng ký</h2>
          <?php if (isset($error_message)): ?>
            <p style="color: red;">
              <?php echo $error_message; ?>
            </p>
          <?php endif; ?>

          <form action="register.php" method="post">
            <div class="input-box">
              <input type="text" id="username" name="username" required placeholder="Tên đăng nhập" />
              <i><ion-icon name="person-outline"></ion-icon></i>
            </div>
            <div class="input-box">
              <input type="email" id="email" name="email" required placeholder="Email" />
              <i><ion-icon name="mail-outline"></ion-icon></i>
            </div>
            <div class="input-box">
              <input type="password" id="password" name="password" required placeholder="Mật khẩu" />
              <i><ion-icon name="lock-closed-outline"></ion-icon></i>
            </div>
            <div class="check">
              <label><input type="checkbox" required />Đồng ý với các điều khoản và dịch vụ</label>
            </div>
            <button type="submit" class="btn">Đăng ký</button>
            <div class="login-link">
              <p>
                Đã có tài khoản?
                <a href="login.php">Đăng nhập</a>
              </p>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
  <!-- login form ends -->

  <?php include 'includes/footer.php'; ?>
  <!-- ionic icon -->
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
  <!-- scripts -->
  <script src="register.js"></script>
</body>

</html>