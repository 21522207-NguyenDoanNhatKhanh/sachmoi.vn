<?php
include 'includes/db.php';
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sachmoi.vn</title>
  <link rel="stylesheet" href="style/bookinfo.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>
<body></body>

<?php include 'includes/header.php'; ?>

<!-- breadscrumb -->
<ul class="breadcrumb">
  <li><a href="index.php">Trang chủ</a></li>
  <li>Thông tin</li>
</ul>

<?php
if (isset($_GET['id'])) {
  $book_id = $_GET['id'];

  $book = get_book_details($book_id);
  increment_view_count($book_id);

  if ($book) {
    echo "
        <!-- book info starts -->
        <section class='information'>
          <h3 class='heading'><span>Thông tin</span></h3>
          <div class='site-wrapper'>
            <div class='container'>
              <div class='up'>
                <div class='image'>
                  <img
                    src='./book_image/{$book['image']}'
                    alt='{$book['name']}'
                  />
                </div>
                <div class='info'>
                  <h1>{$book['name']}</h1>
                  <div class='author'>
                    <h2>Tác giả: <a href=''>{$book['author']}</a></h2>
                  </div>
                  <div class='price'><span>{$book['price']}&#x20AB;</span></div>
                  <div class='func'>
                  <a class='btn buy-now' href='javascript:void(0);'  data-product-id='{$book['id']}'><i class='fas fa-shopping-cart add-to-cart'></i></a>
                    <a href='' class='btn buy-now' data-product-id='{$book['id']}'>Mua ngay</a>
                  </div>
                </div>
              </div>
              <div class='down'>
                <div class='detail1'>
                  <h2>Giới thiệu sách</h2>
                  <p>
                  {$book['description']}
                  </p>
                </div>
                <div class='detail2'>
                  <h2>Chi tiết</h2>
                  <ul>
                    <li><p>Tác giả: {$book['author']}</p></li>
                    <li><p>Nhà xuất bản: {$book['publisher']}</p></li>
                    <li><p>Kích thước: {$book['size']}</p></li>
                    <li><p>Số trang: {$book['page_count']}</p></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- book info ends -->
        ";
  } else {
    echo "<p>Book not found.</p>";
  }
} else {
  echo "<p>Invalid request. Please provide a book ID.</p>";
}

include 'includes/footer.php';
?>




<!-- ionic icon -->
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<!-- scripts -->
<script src="bookinfo.js"></script>
</body>

</html>