<?php
session_start();
include 'includes/header.php';
include 'includes/db.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sachmoi.vn</title>
  <link rel="stylesheet" href="style/catalog.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>
<body>
  <!-- breadscrumb -->
  <ul class="breadcrumb">
      <li><a href="index.php">Trang chủ</a></li>
      <li>Danh mục</li>
  </ul>

  <!-- catalog starts -->
  <section class="catalog" id="catalog">
      <h3 class="heading"><span>Danh mục sản phẩm</span></h3>
      <div class="site-wrapper">
          <div class="container">
              <div class="box">
                  <ul>
                  <li><a href="category.php?id=4" class="father-category"><h2>Văn học Việt Nam</h2></a></li>
                  <li><a href="">- Tiểu thuyết</a></li>
                  <li><a href="">- Truyện ngắn</a></li>
                  <li><a href="">- Thơ</a></li>
                  </ul>
              </div>
              <div class="box">
                  <ul>
                  <li><a href="category.php?id=1" class="father-category"><h2>Văn học nước ngoài</h2></a></li>
                  <li><a href="">- Đương đại</a></li>
                  <li><a href="">- Lãng mạn</a></li>
                  <li><a href="">- Trinh thám/ kinh dị</a></li>
                  <li><a href="">- Light novel</a></li>
                  <li><a href="">- Khoa học</a></li>
                  </ul>
              </div>
              <div class="box">
                  <ul>
                  <li><a href="category.php?id=2" class="father-category"><h2>Sách tham khảo</h2></a></li>
                  <li><a href="">- Tiếng Anh</a></li>
                  <li><a href="">- Tiếng Nhật</a></li>
                  <li><a href="">- Tiếng Trung</a></li>
                  <li><a href="">- Tiếng Pháp</a></li>
                  </ul>
              </div>
              <div class="box">
                  <ul>
                  <li><a href="category.php?id=3" class="father-category"><h2>Sách thiếu nhi</h2></a></li>
                  <li><a href="">- Sách ảnh</a></li>
                  <li><a href="">- Sách nói</a></li>
                  <li><a href="">- Sách tô màu</a></li>
                  </ul>
              </div>
          </div>
      </div>
  </section>

  <!-- catalog ends -->
  <?php include 'includes/footer.php'; ?>

  <!-- ionic icon -->
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
  <!-- scripts -->
  <script src="js/homepage.js"></script>

</body>
</html>