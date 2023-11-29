<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sachmoi.vn</title>
<<<<<<< HEAD
    <link rel="stylesheet" href="style/hotsales.css">
=======
    <link rel="stylesheet" href="./style/bestselling.css">
>>>>>>> 90b15fe9fb6ccc67404e2a9a11734eb41aba6332
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

    $category_id = $_GET['id'];
    $category_name = get_category_name($category_id);
    $books = get_books_by_category($category_id, $page, $rowsPerPage);

    // Lấy tổng số dòng
    $totalRows = get_total_rows('', $category_id);
    $totalPage = ceil($totalRows / $rowsPerPage);
    $listPage = '';

    for ($i = 1; $i <= $totalPage; $i++) {
        if ($i == $page) {
            $listPage .= " <span style='background-color:var(--blue); font-size:2rem; color:white'>" . $i . "</span> ";
        } else {
            $listPage .= ' <a style="font-size:2rem" href="' . $_SERVER['PHP_SELF'] . '?id=' . $category_id . '&page=' . $i . '' . '' . '">' . $i . '</a> ';
        }
    }
    ?>


    <!-- breadscrumb -->
    <ul class="breadcrumb">
        <li><a href="/HomePage/homepage.html">Trang chủ</a></li>
        <li><a href="/Catalog/catalog.html">Danh mục</a></li>
        <li>
            <?= $category_name ?>
        </li>
    </ul>
    <!-- products - hotsales starts -->
    <section class="hotsales" id="hotsales">
        <h3 class="heading"><span>
                <?= $category_name ?>
            </span></h3>
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
                                    // print_r($imageFiles);
                                    $randomImage = $imageFiles ? $imageFiles[array_rand($imageFiles)] : './book_image/lnl_mdhb.jpg';
                                    $imageSrc = '$randomImage';
                                }
                                ?>
                                <a href="book.php?id=<?= $book['id'] ?>">
                                    <img src="<?= $imageSrc ?>" alt=""></a>
                                <!-- <a href="book.php?id=<?= $book['id'] ?>"><img src="./book_image/<?= $book['image'] ?>" alt=""></a> -->
                                <div class="func">
                                    <a href='javascript:void(0);' class='btn add-to-cart'
                                        data-product-id='<?= $book['id'] ?>'><i class='fa-solid fa-cart-shopping'></i></a>
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
    <div class="listpage">
        

        <a href="<?php echo $page > 1 ? $_SERVER['PHP_SELF'] . '?id=' . $category_id . '&page=' . ($page - 1) : 'javascript:void(0)'; ?>"
            <?php echo $page == $totalPage ? 'role="link" aria-disabled="true"' : ''; ?>>
            <button type="button" class="btn" <?php echo $page == 1 ? 'disabled' : ''; ?>>
                « Trước
            </button>
        </a>
        <p>
            <?php echo $listPage; ?>
        </p>
        <a
            href="<?php echo $page < $totalPage ? $_SERVER['PHP_SELF'] . '?id=' . $category_id . '&page=' . ($page + 1) : 'javascript:void(0)'; ?>"
            <?php echo $page == $totalPage ? 'role="link" aria-disabled="true"' : ''; ?>>
            <button type="button" class="ml-3 btn" <?php echo $page == $totalPage ? 'disabled' : ''; ?>>
                Sau »
            </button>
        </a>
    </div>






    <?php include 'includes/footer.php'; ?>
    <!-- ionic icon -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <!-- scripts -->
<<<<<<< HEAD
    <script src="js/hotsale.js"></script>
=======
    <script src="js/homepage.js"></script>
>>>>>>> 90b15fe9fb6ccc67404e2a9a11734eb41aba6332
</body>

</html>