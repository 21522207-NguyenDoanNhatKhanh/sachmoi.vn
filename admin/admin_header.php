
<header class="header">
   <div class="header-2">
   <div class="flex">
      <a href="admin_dashboard.php" class="logo">Admin<span>Panel</span></a>

      <nav class="navbar">
         <a href="admin_dashboard.php">Trang chủ</a>
         <a href="admin_products.php">Sản phẩm</a>
         <a href="admin_orders.php">Đơn hàng</a>
         <a href="admin_customers.php">Khách hàng</a>
         <a href="admin_categories.php">Danh mục</a>
         <a href="admin_authors.php">Tác giả</a>
         <a href="admin_partners.php">Đối tác</a>
      </nav>

      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <div id="user-btn" class="fas fa-user"></div>
      </div>

      <div class="account-box">
         <p>username : <span><?php echo $_SESSION['username']; ?></span></p>
         <p>email : <span><?php echo $_SESSION['email']; ?></span></p>
         <a href="../logout.php" class="delete-btn">logout</a>
         <!-- <div>new <a href="../login.php">login</a> | <a href="../register.php">register</a></div> -->
      </div>
   </div>
   </div>
</header>

