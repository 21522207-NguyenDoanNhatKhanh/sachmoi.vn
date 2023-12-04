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
                    <li><a href="category.php?id=5">- Tiểu thuyết</a></li>
                    <li><a href="category.php?id=6">- Truyện ngắn</a></li>
                    <li><a href="category.php?id=7">- Thơ</a></li>
                    </ul>
                </div>
                <div class="box">
                    <ul>
                    <li><a href="category.php?id=1" class="father-category"><h2>Văn học nước ngoài</h2></a></li>
                    <li><a href="category.php?id=8">- Đương đại</a></li>
                    <li><a href="category.php?id=9">- Lãng mạn</a></li>
                    <li><a href="category.php?id=10">- Trinh thám/ kinh dị</a></li>
                    <li><a href="category.php?id=11">- Light novel</a></li>
                    <li><a href="category.php?id=12">- Khoa học</a></li>
                    </ul>
                </div>
                <div class="box">
                    <ul>
                    <li><a href="category.php?id=2" class="father-category"><h2>Sách tham khảo</h2></a></li>
                    <li><a href="category.php?id=13">- Tiếng Anh</a></li>
                    <li><a href="category.php?id=14">- Tiếng Nhật</a></li>
                    <li><a href="category.php?id=15">- Tiếng Trung</a></li>
                    <li><a href="category.php?id=16">- Tiếng Pháp</a></li>
                    </ul>
                </div>
                <div class="box">
                    <ul>
                    <li><a href="category.php?id=3" class="father-category"><h2>Sách thiếu nhi</h2></a></li>
                    <li><a href="category.php?id=17">- Sách ảnh</a></li>
                    <li><a href="category.php?id=18">- Sách nói</a></li>
                    <li><a href="category.php?id=19">- Sách tô màu</a></li>
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