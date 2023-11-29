<?php
include 'includes/db.php';
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sachmoi.vn</title>
    <link rel="stylesheet" href="style/author_info.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    />
  </head>
  <body></body>

<?php include 'includes/header.php'; ?>
<<<<<<< HEAD

 <!-- bottom navbar -->
 <nav class="bottom-navbar">
      <a href="/HomePage/homepage.html" class="fas fa-home"></a>
      <a href="/Catalog/catalog.html" class="fas fa-list"></a>
      <a href="/Products/HotSales/hotsales.html" class="fas fa-fire"></a>
      <a href="/AboutUs/aboutus.html" class="fas fa-circle-info"></a>
      <a href="/Contact/contact.html" class="fa-solid fa-ticket"></a>
    </nav>
    
    <!-- to-the-top button -->
    <button class="to-the-top">
      <a href="#top"><i class="fa-solid fa-arrow-up"></i></a>
    </button>

=======
 
    <!-- breadscrumb -->
    <ul class="breadcrumb">
      <li><a href="/HomePage/homepage.html">Trang chủ</a></li>
      <li>Annet Schapp</li>
    </ul>
>>>>>>> 90b15fe9fb6ccc67404e2a9a11734eb41aba6332

<?php
if (isset($_GET['id'])) {
    $author_id = $_GET['id'];

    $author = get_author_by_id($author_id);
    if ($author) {
       
        echo "
        <!-- breadscrumb -->
        <ul class='breadcrumb'>
          <li><a href='/HomePage/homepage.html'>Trang chủ</a></li>
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
 <script
      type="module"
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"
    ></script>
    <!-- scripts -->
    <script src="js/bookinfo.js"></script>
  </body>
</html>
