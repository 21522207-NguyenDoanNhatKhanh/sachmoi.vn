<?php
include 'includes/db.php';
// include 'functions.php';
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sachmoi.vn</title>
    <link rel="stylesheet" href="style/bookinfo.css" />
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

 <!-- bottom navbar -->
 <nav class="bottom-navbar">
      <a href="/HomePage/homepage.html" class="fas fa-home"></a>
      <a href="/Catalog/catalog.html" class="fas fa-list"></a>
      <a href="/Products/HotSales/hotsales.html" class="fas fa-fire"></a>
      <a href="/AboutUs/aboutus.html" class="fas fa-circle-info"></a>
      <a href="/Contact/contact.html" class="fa-solid fa-ticket"></a>
    </nav>
    <!-- breadscrumb -->
    <!-- <ul class="breadcrumb">
      <li><a href="/HomePage/homepage.html">Trang chủ</a></li>
      <li>Annet Schapp</li>
    </ul> -->
    <!-- to-the-top button -->
    <button class="to-the-top">
      <a href="#top"><i class="fa-solid fa-arrow-up"></i></a>
    </button>


<?php
if (isset($_GET['id'])) {
    $partner_id = $_GET['id'];

    $partner = get_partner_by_id($partner_id);

    if ($partner) {
       
        echo "

    <!-- partners starts -->
      <section class='partners'>
        <div class='site-wrapper'>
          <img src='images/partners/{$partner['Image']}' />
        <div class='text'>
          <h2>{$partner['name']}</h2>
          <a href='{$partner['link']}'>{$partner['link']}</a>
          <p>{$partner['description']}</p>
        </div>
        </div>
      </section>
    <!-- partners ends -->
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
    <script src="bookinfo.js"></script>
  </body>
</html>
