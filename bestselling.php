<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sachmoi.vn</title>
    <link rel="stylesheet" href="style/hotsales.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>
<body>
    
    <?php
    session_start();
    include 'includes/header.php';
    include 'includes/db.php';

    $page = isset($_GET['page']) ? $_GET['page'] : 1;
    $rowsPerPage = isset($_SESSION['rows_per_page']) ? $_SESSION['rows_per_page'] : 12;

    $maxPages = 4;

    $books = get_popular_books($rowsPerPage, ($page - 1) * $rowsPerPage);

    // Lấy tổng số dòng
    // $totalRows = get_total_rows();
    // $totalRows = get_total_rows('', 'bestselling',$rowsPerPage, ($page - 1) * $rowsPerPage);
    $totalRows = 48;
    // $totalPage = min(ceil($totalRows / $rowsPerPage), $maxPages);
    $totalPage = 4;
    $listPage = '';

    for ($i = 1; $i <= $totalPage; $i++) {
        if ($i == $page) {
            $listPage .= " <span >" . $i . "</span> ";
        } else {
            $listPage .= ' <a style="font-size:2rem" href="' . $_SERVER['PHP_SELF'] . '?page=' . $i . '">' . $i . '</a> ';
        }
    }
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
        <li><a href="/Catalog/catalog.html">Danh mục</a></li>
        <li>Sách bán chạy</li>
    </ul>
    <!-- products - hotsales starts -->
    <section class="hotsales" id="hotsales">
        <h3 class="heading"><span>Sách bán chạy</span></h3>
        <div class="site-wrapper">
            <div class="container">
                <!--  -->
                <div class="row">
                    <?php foreach ($books as $book) : ?>
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
                                    <a href="" class='btn add-to-cart' data-product-id='<?= $book['id'] ?>'><i class="fa-solid fa-cart-shopping"></i></a>
                                    <a href="" class='btn buy-now' data-product-id='<?= $book['id'] ?>'>Mua ngay</a>
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





    <p>
        <?php echo $listPage; ?>
    </p>

    <a href="<?php echo $page > 1 ? $_SERVER['PHP_SELF'] . '?page=' . ($page - 1) : 'javascript:void(0)'; ?>">
        <button type="button" class="btn" <?php echo $page == 1 ? 'disabled' : ''; ?>>
            « Trước
        </button>
    </a>
    <a href="<?php echo $page < $totalPage ? $_SERVER['PHP_SELF'] . '?page=' . ($page + 1) : 'javascript:void(0)'; ?>">
        <button type="button" class="ml-3 btn" <?php echo $page == $totalPage ? 'disabled' : ''; ?>>
            Sau »
        </button>
    </a>





    <?php include 'includes/footer.php'; ?>
    <!-- ionic icon -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <!-- scripts -->
    <script src="hotsales.js"></script>
</body>

</html>