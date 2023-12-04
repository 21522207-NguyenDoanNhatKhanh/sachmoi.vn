<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sachmoi.vn</title>
  <link rel="stylesheet" href="style/author_info.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>

<body>
  <?php
  include 'includes/db.php';
  ?>

  <?php include 'includes/header.php'; ?>

  <?php
  if (isset($_GET['id'])) {
    $author_id = $_GET['id'];

    $author = get_author_by_id($author_id);
    if ($author) {

      echo "
        <!-- breadscrumb -->
        <ul class='breadcrumb'>
          <li><a href='index.php'>Trang chủ</a></li>
          <li>{$author['name']}</li>
        </ul>
    <!-- authors starts -->
      <section class='authors'>
        <div class='site-wrapper'>
          <img src='images/authors/{$author['Image']}' />
        <div class='text'>
          <h2>{$author['name']}</h2>
          <p>{$author['description']}</p>
        </div>
        </div>
      </section>
    <!-- authors ends -->
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
  <script src="js/bookinfo.js"></script>
</body>

</html>