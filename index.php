<!DOCTYPE html>

<html lang="vi">

<head>
  <title>Sachmoi.vn </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style/homepage.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>

<body>
  <?php
  session_start();
  include 'includes/header.php';
  include 'includes/db.php';

  // $page = isset($_GET['page']) ? $_GET['page'] : 1;
  // $rowsPerPage = isset($_SESSION['rows_per_page']) ? $_SESSION['rows_per_page'] : 12;
  
  $searchTerm = isset($_GET['search']) ? mysqli_real_escape_string($conn, $_GET['search']) : '';
  $searchTerm = trim($searchTerm);

  // $books = get_all_books($page, $rowsPerPage, $searchTerm);
  $new_books = get_new_books(8);
  // $popular_books = get_popular_books(5);
  ?>
  <!-- home starts -->
  <section class="home" id="home">
    <div class="site-wrapper">
      <div class="row">
        <div class="intro">
          <h3>Sách mới - Mang tri thức đến mọi nơi</h3>
          <p>
            <a href="#home">Sachmoi.vn</a> là nhà sách trực tuyến đáng tin cậy, cung cấp hàng ngàn sách đa dạng về mọi
            lĩnh vực. Giao diện thân thiện, dễ sử dụng. Tìm kiếm và đặt hàng thuận tiện. Dịch vụ chuyên nghiệp, đóng gói
            cẩn thận, vận chuyển nhanh chóng. Chất lượng sách đa ngôn ngữ, xuất bản phẩm đa dạng. Tham gia <a
              href="#home">Sachmoi.vn</a> ngay để khám phá thế giới sách phong phú và thỏa mãn đam mê đọc sách.
          </p>
          <a href="bestselling.php" class="btn">Mua sắm ngay</a>
        </div>
        <div class="swiper catalogs">
          <div class="swiper-wrapper">
            <?php

            $genres = get_genres();

            if ($genres) {
              // Xử lý dữ liệu thể loại ở đây
              foreach ($genres as $genre) {
                // $genre là một mảng chứa thông tin về mỗi thể loại
                echo "<div class='swiper-slide genres'>
            <div class='content'>
              <a href='genre5'>{$genre['name']}</a>
            </div>
            <div class='image'>
              <a href='category.php?id={$genre['id']}'><img src='images/genres/{$genre['Image']}' alt=''></a>            
            </div>
          </div>";
              }
            } else {
              // Xử lý trường hợp truy vấn không thành công
              // echo "Không thể lấy dữ liệu thể loại.";
            }

            ?>

          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- home ends -->
  <!-- service starts -->
  <section class="service-container">
    <div class="service">
      <i class="fa-solid fa-truck-fast"></i>
      <div class="content">
        <h3>Vận chuyển miễn phí</h3>
        <p>Đối với hóa đơn từ 100,000VND!</p>
      </div>
    </div>

    <div class="service">
      <i class="fa-solid fa-credit-card"></i>
      <div class="content">
        <h3>Thanh toán an toàn</h3>
        <p>100% bảo mật thông tin khách hàng!</p>
      </div>
    </div>

    <div class="service">
      <i class="fas fa-redo-alt"></i>
      <div class="content">
        <h3>Đổi trả dễ dàng</h3>
        <p>10 ngày đổi trả miễn phí!</p>
      </div>
    </div>

    <div class="service">
      <i class="fas fa-headset"></i>
      <div class="content">
        <h3>Hỗ trợ 24/7</h3>
        <p>Nhân viên luôn có mặt hỗ trợ bạn!</p>
      </div>
    </div>
  </section>
  <!-- service ends -->
  <!-- authors starts -->
  <section class="authors">
    <h1 class="heading"><span>Các tác giả</span></h1>
    <div class="site-wrapper">
      <div class="swiper authors-slider">
        <div class="swiper-wrapper">
          <?php
          $authors = get_authors();

          // Hiển thị thông tin tác giả
          if ($authors) {
            foreach ($authors as $author) {
              echo "<div class='swiper-slide'>
                    <div class='image'>
                      <a href='author.php?id={$author['id']}'><img src='images/authors/{$author['Image']}' alt='Annet Schaap'></a>            
                    </div>
                    <div class='name'>
                      <h3><a href='author.php?id={$author['id']}'>{$author['name']}</a></h3>
                    </div>
                  </div>";
            }
          }
          ?>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
    </div>
  </section>
  <!-- authors ends -->
  <!-- new books starts  -->
  <section class="new-books">
    <h3 class="heading"><span>Sách mới</span></h3>
    <div class="site-wrapper">
      <div class="swiper new-slider">

        <div class="swiper-wrapper">

          <?php
          foreach ($new_books as $book) {

            $imagePath = "./book_image/{$book['image']}";
            if (file_exists($imagePath)) {
              $imageSrc = $imagePath;
            } else {
              $imageFiles = glob("./book_image/*.jpg");
              $randomImage = $imageFiles ? $imageFiles[array_rand($imageFiles)] : './book_image/lnl_mdhb.jpg';
              $imageSrc = '$randomImage';
            }
            echo "
        <div class='swiper-slide box'>
              <div class='icons'>
              <a href='javascript:void(0);' class='fas fa-shopping-cart add-to-cart' data-product-id='{$book['id']}'></a>
                <a href='book.php?id={$book['id']}' class='fas fa-eye'></a>
              </div>
              <div class='image'>
                <a href='book.php?id={$book['id']}'><img src='$imageSrc' alt='{$book['name']}'></a>
              </div>
              <div class='content'>
                <h3>{$book['name']}</h3>
      <div class='price'>" . number_format($book['price'], 0, ',', '.') . '₫' . "</div>
                <a href='#' class='btn buy-now' data-product-id='{$book['id']}'>Mua sắm ngay</a>
              </div>          
        </div>
    ";

          }
          ?>

        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
    </div>

  </section>
  <!-- new books ends  -->
  <!-- about website starts -->
  <section class="about_website">
    <h3 class="heading"><span>Về trang web</span></h3>
    <div class="site-wrapper">
      <div class="wrapper">
        <div class="content">
          <h3>SÁCH MỚI - Mang tri thức đến mọi nơi</h3>
          <p>
            "Sách mới" là một trang web bán sách được xây dựng bởi một nhóm sinh viên đam mê văn hóa đọc và công nghệ.
            Với mục tiêu mang đến cho người đọc những tác phẩm mới và đa dạng, trang web cung cấp một bộ sưu tập sách
            phong phú từ các thể loại văn học, kinh doanh, khoa học, tự nhiên và nhiều hơn nữa.
            <br>
            <br>
            "Sách mới" tạo điểm nhấn bằng việc cung cấp thông tin chi tiết về mỗi cuốn sách, bao gồm tác giả, mô tả nội
            dung và đánh giá từ cộng đồng đọc giả. Người dùng có thể dễ dàng tìm kiếm và lựa chọn sách theo danh mục,
            tác giả hoặc từ khóa.
            <br><br>
            Trang web cũng đảm bảo trải nghiệm mua sắm an toàn và thuận tiện bằng cách cung cấp tính năng giỏ hàng và
            thanh toán trực tuyến. Giao diện trực quan và thân thiện giúp người dùng dễ dàng duyệt qua các danh sách
            sách và tìm kiếm những tác phẩm mới nhất.
            <br><br>
            Với tâm huyết và sự đam mê về sách, nhóm sinh viên đã xây dựng "Sách mới" nhằm khơi dậy đam mê đọc sách và
            cung cấp một nền tảng trực tuyến để mọi người có thể dễ dàng tiếp cận và mua sắm sách một cách tiện lợi và
            thú vị.
          </p>
        </div>
        <div class="image">
          <img src="images/bookstore.jpg" alt="bookstore">
        </div>
      </div>
    </div>
  </section>
  <!-- about website ends -->
  <!-- cooperator starts -->
  <section class="cooperators">
    <h3 class="heading"><span>Các đối tác</span></h3>
    <div class="site-wrapper">
      <div class="swiper cooperators-slider">

        <div class="swiper-wrapper">

          <?php
          $partners = get_partners();

          // Hiển thị thông tin tác giả
          if ($partners) {
            foreach ($partners as $partner) {
              echo "<div class='swiper-slide'>
        <div class='icon'>
          <a href='partner.php?id={$partner['id']}'><img src='images/partners/{$partner['Image']}' alt='{$partner['name']}'></a>
        </div>
        <div class='name'>
          <h3><a href='{$partner['link']}'>{$partner['name']}</a></h3>
        </div>
      </div>";
            }
          }
          ?>

        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
    </div>

  </section>
  <!-- cooperator ends -->
  <?php include 'includes/footer.php'; ?>
  <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
  <!-- scripts -->
  <script src="js/homepage.js"></script>
</body>

</html>