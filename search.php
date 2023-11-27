<?php
include 'includes/db.php';
session_start();

$search_query = isset($_GET['q']) ? $_GET['q'] : '';
$search_query = htmlspecialchars($search_query); // Tránh tấn công XSS

echo '<h2>Kết quả tìm kiếm cho: "' . $search_query . '"</h2>';
$books = search_books($search_query); 
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sachmoi.vn</title>
        <link rel="stylesheet" href="./style/hotsales.css">
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
    
    <?php
    include 'includes/header.php';
    ?>
    

    
    <!-- bottom navbar -->
    <nav class="bottom-navbar">
        <a href="/HomePage/homepage.html" class="fas fa-home"></a>
        <a href="/Catalog/catalog.html" class="fas fa-list"></a>
        <a href="#hotsales" class="fas fa-fire"></a>
        <a href="/AboutUs/aboutus.html" class="fas fa-circle-info"></a>
        <a href="/Contact/contact.html" class="fa-solid fa-ticket"></a>
    </nav>
    <!-- to-the-top button -->
    <button class="to-the-top">
        <a href="#top"><i class="fa-solid fa-arrow-up"></i></a>
    </button>
    <!-- breadscrumb -->
    <ul class="breadcrumb">
        <li><a href="/HomePage/homepage.html">Trang chủ</a></li>
        <li>Tìm kiếm</li>
    </ul>
    <!-- products - hotsales starts -->
    <section class="hotsales" id="hotsales">
        <h3 class="heading"><span>Sách mới</span></h3>
        <div class="site-wrapper">
            <div class="container">
                <!--  -->
                <div class="row">
                <?php foreach ($books as $book): ?>
                        <div class="book">
                            <div class="image">
                                <?php
                                $imagePath = "./book_image/{$book['image']}";
                                if (file_exists($imagePath)) {
                                    $imageSrc = $imagePath;
                                } else {
                                    $imageFiles = glob("./book_image/*.jpg");
                                    $randomImage = $imageFiles ? $imageFiles[array_rand($imageFiles)] : './book_image/lnl_mdhb.jpg';
                                    $imageSrc = '$randomImage';
                                }
                                ?>
                                <a href="book.php?id=<?= $book['id'] ?>">
                                    <img src="<?= $imageSrc ?>" alt=""></a>
                                <!-- <a href="book.php?id=<?= $book['id'] ?>"><img src="./book_image/<?= $book['image'] ?>" alt=""></a> -->
                                <div class="func">
                                    <a href="" class="btn"><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="" class="btn">Mua ngay</a>
                                </div>
                            </div>
                            <div class="name">
                                <a href="book.php?id=<?= $book['id'] ?>">
                                    <h3>
                                        <?= $book['name'] ?>
                                    </h3>
                                </a>
                                <div class="price">
                                <?= number_format($book['price'], 0, ',', '.') . '₫' ?>
                                </div>
                            </div>
                        </div>

                    <?php endforeach; ?>
                <!--  -->
                </div>
                <!--  -->
            </div>
        </div>
    </section>
    <!-- products - hotsales ends -->




<?php include 'includes/footer.php'; ?>


<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<!-- scripts -->
<script src="js/homepage.js"></script>
</body>
</html>