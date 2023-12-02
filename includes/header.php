<!-- header starts -->
<header class="header">
  <div class="header1">
    <img src="images/logo.png" class="image">
  </div>
  <!--  -->
  <div class="header2">
    <div class="left">
      <a href="index.php" class="logo"><i class="fa-solid fa-book"></i> Sách mới </a>
    </div>
    <!--  -->
    <div class="middle">
      <div class="navbar">
          <ul class="menu">
            <li>
              <a href="index.php">Trang chủ</a>
            </li>
            <li>
              <a href="catalog.php">Danh mục &#x25BC;</a>
              <ul class="submenu">
                <li>
                  <a href="category.php?id=4">Văn học Việt Nam</a>
                  <ul class="submenu2">
                    <li><a href="category.php?id=5">Tiểu thuyết</a></li>
                    <li><a href="category.php?id=6">Truyện ngắn</a></li>
                    <li><a href="category.php?id=7">Thơ</a></li>     
                  </ul>
                </li>
                <li>
                  <a href="category.php?id=1">Văn học Nước Ngoài</a>
                  <ul class="submenu2">
                    <li><a href="category.php?id=8">Đương đại</a></li>
                    <li><a href="category.php?id=9">Lãng mạn</a></li>
                    <li><a href="category.php?id=10">Trinh thám / Kinh dị</a></li>
                    <li><a href="category.php?id=11">Light novel</a></li>
                    <li><a href="category.php?id=12">Khoa học</a></li>
                  </ul>
                </li>
                <li>
                  <a href="category.php?id=2">Sách tham khảo</a>
                  <ul class="submenu2">
                    <li><a href="category.php?id=13">Tiếng Anh</a></li>
                    <li><a href="category.php?id=14">Tiếng Nhật</a></li>
                    <li><a href="category.php?id=15">Tiếng Trung</a></li>
                    <li><a href="category.php?id=16">Tiếng Pháp</a></li>
                  </ul>
                </li>
                <li>
                  <a href="category.php?id=3">Sách thiếu nhi</a>
                  <ul class="submenu2">
                    <li><a href="category.php?id=17">Sách ảnh</a></li>
                    <li><a href="category.php?id=18">Sách nói</a></li>
                    <li><a href="category.php?id=19">Sách tô màu</a></li>
                  </ul>
                </li>
                <li>
                  <a href="new_books.php">Sách mới</a>
                </li>
              </ul>
            </li>
            <li>
                <a href="bestselling.php">Sách bán chạy</a>
            </li>				
            <li>
                <a href="aboutus.php">Nhà sáng lập</a>
            </li>			
            <li>
                <a href="contact.php">Ưu đãi</a>
            </li>
          </ul>
        </div>
      </div>
    <!-- bottom navbar -->
    <nav class="bottom-navbar">
        <a href="index.php" class="fas fa-home"></a>
        <a href="catalog.php" class="fas fa-list"></a>
        <a href="bestselling.php" class="fas fa-fire"></a>
        <a href="aboutus.php" class="fas fa-circle-info"></a>
        <a href="contact.php" class="fa-solid fa-ticket"></a>
    </nav>
    <!-- to-the-top button -->
    <button class="to-the-top">
        <a href="#top"><i class="fa-solid fa-arrow-up"></i></a>
    </button>
    <!--  -->
      <div class="right">
        <form action="search.php" class="search-form">
          <input type="search" name="q" placeholder="Tìm kiếm" id="search-box">
          <label for="search-box" class="fas fa-search"></label>
        </form>
        <div class="dropdown">
        <?php
        if (isset($_SESSION['user_id'])) {
          $username = $_SESSION['username'];
          $maxUsernameLength = 10;
      
          // Kiểm tra và cắt chuỗi nếu quá dài
          if (strlen($username) > $maxUsernameLength) {
              $username = substr($username, 0, $maxUsernameLength) . '...';
          }
            echo '<a href="#" class="account"><i class="fas fa-user"></i>  ' . $username . '</a>';
            echo '<div class="dropdown-content">';
            echo '<a href="logout.php">Đăng xuất</a>';
            echo '<a href="view_orders.php">Xem đơn hàng</a>';
            echo '</div>';
          } else {
            echo '<a href="#" class="account"><i class="fas fa-user"></i></a>';
            echo '<div class="dropdown-content">';
            echo '<a href="login.php">Đăng nhập</a>';
            echo '<a href="register.php">Đăng ký</a>';
            echo '</div>';
        }
        ?>
          </div>
        <a href="cart.php" class="account"><i class="fas fa-shopping-cart"></i></a>
      </div>
    </div>
</header>
