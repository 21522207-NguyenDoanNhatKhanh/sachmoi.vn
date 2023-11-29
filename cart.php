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
  <link rel="stylesheet" href="style/cart.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>

<body></body>



<!-- bottom navbar -->
<nav class="bottom-navbar">
  <a href="../HomePage/homepage.html" class="fas fa-home"></a>
  <a href="../Catalog/catalog.html" class="fas fa-list"></a>
  <a href="../Products/HotSales/hotsales.html" class="fas fa-fire"></a>
  <a href="../AboutUs/aboutus.html" class="fas fa-circle-info"></a>
  <a href="../Contact/contact.html" class="fa-solid fa-ticket"></a>
</nav>
<!-- breadscrumb -->
<ul class="breadcrumb">
  <li><a href="index.php">Trang chủ</a></li>
  <li>Giỏ hàng</li>
</ul>
<!-- to-the-top button -->
<button class="to-the-top">
  <a href="#top"><i class="fa-solid fa-arrow-up"></i></a>
</button>
<!-- cart starts -->
<section class="cart" id="cart">
  <h3 class="heading"><span>Giỏ hàng của bạn</span></h3>
  <div class="site-wrapper">
    <div class="box">
      <table id="cart-table">
        <tbody>
          <!-- Các sản phẩm sẽ được hiển thị ở đây -->
          <?php
          if (!empty($_SESSION['cart'])) {
            echo '<table>';
            echo '<tr>
            <th class="style">Sản phẩm</th>
            <th class="style">Tên</th>
            <th class="style">Số lượng</th>
            <th class="style">Giá</th>
            <th class="style">Thành tiền</th>
            </tr>';

            foreach ($_SESSION['cart'] as $product_id => $quantity) {
              $product = get_book_details($product_id);
              if ($product) {
                echo '<tr>';
                echo '<td class="style"> <img class="image" src="book_image/' . $product['image'] . ' "></td>';
                echo '<td class="style">' . $product['name'] . '</td>';
                echo '<td class="style">
                         <form class="update-form" data-product-id="' . $product_id . '">
                             <input type="hidden" name="product_id" value="' . $product_id . '">
                             <input type="number" name="quantity" value="' . $quantity . '" min="1" oninput="updateCart(this)">
                         </form>
                      </td>';
                echo '<td class="style" id="product-price">' . number_format($product['price'], 0, ',', '.') . '&#x20AB;</td>';
                echo '<td class="style" id="total-price">' . number_format($quantity * $product['price'], 0, ',', '.') . '&#x20AB;</td>';
                echo '<td class="style">
                         <form class="remove-form" data-product-id="' . $product_id . '">
                             <input type="hidden" name="product_id" value="' . $product_id . '">
                             <button type="button" class="btn" onclick="removeFromCart(this)">Xoá</button>
                         </form>
                      </td>';
                echo '</tr>';
              }
            }

            echo '</table>';
            echo '
          <form action="checkout.php" method="post">
              <input class="btn" type="submit" name="checkout" value="Mua hàng">
          </form>
          ';
          } else {
            echo '<p style="font-size:2.2rem; padding:10px; font-weight:bold; color:var(--darkblue);"><i class="fa-solid fa-cart-shopping"></i>  Giỏ hàng của bạn đang trống.</p>';
          }          
          ?>
        </tbody>
      </table>
    </div>
  </div>
</section>
<!-- cart ends -->

<?php include 'includes/footer.php'; ?>

<!-- ionic icon -->
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<!-- scripts -->
<script src="cart.js"></script>
</body>
<script src="js/update_cart.js"></script>

</html>