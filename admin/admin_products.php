<?php
include 'config.php';
session_start();

if (!isset($_SESSION['user_id']) || $_SESSION['user_type'] !== 'admin') {
    header('Location: ../index.php');
    exit();
}


if(isset($_POST['add_product'])){
   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $price = $_POST['price'];

   $author = mysqli_real_escape_string($conn, $_POST['author']);
   $publisher = mysqli_real_escape_string($conn, $_POST['publisher']);
   $category = $_POST['category'];
   $release_date = $_POST['release_date'];
   $size = mysqli_real_escape_string($conn, $_POST['size']);
   $page_count = $_POST['page_count'];
   $description = mysqli_real_escape_string($conn, $_POST['description']);
   $stock_quantity = $_POST['stock_quantity'];

   $image = $_FILES['image']['name'];
   $image_size = $_FILES['image']['size'];
   $image_tmp_name = $_FILES['image']['tmp_name'];
   $image_folder = '../book_image/'.$image;

   $select_product_name = mysqli_query($conn, "SELECT name FROM `product` WHERE name = '$name'") or die('query failed');

   if(mysqli_num_rows($select_product_name) > 0){
      $message[] = 'product name already added';
   }else{
      $add_product_query = mysqli_query($conn, "INSERT INTO `product`(name, price, image, author, publisher, category_id, release_date, size, page_count, description, stock_quantity) VALUES('$name', '$price', '$image', '$author', '$publisher', '$category', '$release_date', '$size', '$page_count', '$description', '$stock_quantity')") or die('query failed');

      if($add_product_query){
         if($image_size > 2000000){
            $message[] = 'image size is too large';
         }else{
            move_uploaded_file($image_tmp_name, $image_folder);
            $message[] = 'product added successfully!';
         }
      }else{
         $message[] = 'product could not be added!';
      }
   }
}

if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   $delete_image_query = mysqli_query($conn, "SELECT image FROM `product` WHERE id = '$delete_id'") or die('query failed');
   $fetch_delete_image = mysqli_fetch_assoc($delete_image_query);
   unlink('../book_image/'.$fetch_delete_image['image']);
   mysqli_query($conn, "DELETE FROM `product` WHERE id = '$delete_id'") or die('query failed');
   header('location:admin_products.php');
}

if(isset($_POST['update_product'])){
   $update_p_id = $_POST['update_p_id'];
   $update_name = $_POST['update_name'];
   $update_price = $_POST['update_price'];

   $update_author = mysqli_real_escape_string($conn, $_POST['update_author']);
   $update_publisher = mysqli_real_escape_string($conn, $_POST['update_publisher']);
   $update_category = $_POST['update_category'];
   $update_release_date = $_POST['update_release_date'];
   $update_size = mysqli_real_escape_string($conn, $_POST['update_size']);
   $update_page_count = $_POST['update_page_count'];
   $update_description = mysqli_real_escape_string($conn, $_POST['update_description']);
   $update_stock_quantity = $_POST['update_stock_quantity'];

   mysqli_query($conn, "UPDATE `product` SET name = '$update_name', price = '$update_price', author = '$update_author', publisher = '$update_publisher', category_id = '$update_category', release_date = '$update_release_date', size = '$update_size', page_count = '$update_page_count', description = '$update_description', stock_quantity = '$update_stock_quantity' WHERE id = '$update_p_id'") or die('query failed');

   $update_image = $_FILES['update_image']['name'];
   $update_image_tmp_name = $_FILES['update_image']['tmp_name'];
   $update_image_size = $_FILES['update_image']['size'];
   $update_folder = '../book_image/'.$update_image;
   $update_old_image = $_POST['update_old_image'];

   if(!empty($update_image)){
      if($update_image_size > 2000000){
         $message[] = 'Kích thước file quá lớn';
      }else{
         mysqli_query($conn, "UPDATE `product` SET image = '$update_image' WHERE id = '$update_p_id'") or die('query failed');
         move_uploaded_file($update_image_tmp_name, $update_folder);
         unlink('../book_image/'.$update_old_image);
      }
   }

   header('location:admin_products.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>products</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link rel="stylesheet" href="../style/admin_style.css">
</head>
<body>
   
<?php include 'admin_header.php'; ?>

<button class="btn" id="open-add-product">+</button>

<!-- add products  -->
<section class="add-products" style="display: none">
   <form action="" method="post" enctype="multipart/form-data">
    <h3>Thêm sản phẩm mới</h3>    <input type="text" name="name" class="box" placeholder="Nhập tên sản phẩm" required>
    <input type="text" name="author" class="box" placeholder="Nhập tên tác giả" required>
    <input type="text" name="publisher" class="box" placeholder="Nhập tên nhà xuất bản" required>
    <input type="number" min="0" name="price" class="box" placeholder="Nhập giá sản phẩm" required>
    <input type="file" name="image" accept="image/jpg, image/jpeg, image/png" class="box" required>
<select name="category" class="box" required>
        <?php
        $select_categories = mysqli_query($conn, "SELECT * FROM `product_category`") or die('Query failed');
        while ($category = mysqli_fetch_assoc($select_categories)) {
            echo "<option value='{$category['id']}'>{$category['name']}</option>";
        }
        ?>
    </select>
    <input type="date" name="release_date" class="box" required>
    <input type="text" name="size" class="box" placeholder="Nhập kích thước" required>
    <input type="number" min="0" name="page_count" class="box" placeholder="Nhập số trang" required>
    <textarea name="description" class="box" placeholder="Nhập mô tả" required></textarea>
    <input type="number" min="0" name="stock_quantity" class="box" placeholder="Nhập số lượng tồn kho" required>

    <input type="submit" value="Thêm sản phẩm" name="add_product" class="btn">
</form>
</section>


<!-- show products  -->
<section class="show-products">
   <div class="box-container">
      <?php
         $select_products = mysqli_query($conn, "SELECT * FROM `product`") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
      ?>
      <div class="box">
         <img src="../book_image/<?php echo $fetch_products['image']; ?>" alt="">
         <div class="name"><?php echo $fetch_products['name']; ?></div>
         <div class="price"><?php echo $fetch_products['price']; ?></div>
         <a href="admin_products.php?update=<?php echo $fetch_products['id']; ?>" class="option-btn">update</a>
         <a href="admin_products.php?delete=<?php echo $fetch_products['id']; ?>" class="delete-btn" onclick="return confirm('delete this product?');">delete</a>
      </div>
      <?php
         }
      }else{
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>
   </div>
</section>

<section class="edit-product-form">
   <?php
      if(isset($_GET['update'])){
         $update_id = $_GET['update'];
         $update_query = mysqli_query($conn, "SELECT * FROM `product` WHERE id = '$update_id'") or die('query failed');
         if(mysqli_num_rows($update_query) > 0){
            while($fetch_update = mysqli_fetch_assoc($update_query)){
   ?>
   <form class="edit-product-form1" action="" method="post" enctype="multipart/form-data">
    <input type="hidden" name="update_p_id" value="<?php echo $fetch_update['id']; ?>">
    <input type="hidden" name="update_old_image" value="<?php echo $fetch_update['image']; ?>">
    <!-- <img src="../book_image/<?php  //echo $fetch_update['image']; ?>" alt=""> -->
    <input type="text" name="update_name" value="<?php echo $fetch_update['name']; ?>" class="box" required placeholder="Nhập tên sản phẩm">
    <input type="text" name="update_author" value="<?php echo $fetch_update['author']; ?>" class="box" required placeholder="Nhập tên tác giả">
    <input type="text" name="update_publisher" value="<?php echo $fetch_update['publisher']; ?>" class="box" required placeholder="Nhập tên nhà xuất bản">
    <input type="number" min="0" name="update_price" value="<?php echo $fetch_update['price']; ?>" class="box" placeholder="Nhập giá sản phẩm" required>
    <input type="file" name="update_image" accept="image/jpg, image/jpeg, image/png" class="box">
    <select name="update_category" class="box" required>        <?php
        $select_categories = mysqli_query($conn, "SELECT * FROM `product_category`") or die('Query failed');
        while ($category = mysqli_fetch_assoc($select_categories)) {
            $selected = ($category['id'] == $fetch_update['category_id']) ? 'selected' : '';
            echo "<option value='{$category['id']}' {$selected}>{$category['name']}</option>";
        }
        ?>
    </select>

    <input type="date" name="update_release_date" value="<?php echo $fetch_update['release_date']; ?>" class="box" required>
    <input type="text" name="update_size" value="<?php echo $fetch_update['size']; ?>" class="box" placeholder="Nhập kích thước" required>
    <input type="number" min="0" name="update_page_count" value="<?php echo $fetch_update['page_count']; ?>" class="box" placeholder="Nhập số trang" required>
    <textarea name="update_description" class="box" placeholder="Nhập mô tả" required><?php echo $fetch_update['description']; ?></textarea>
    <input type="number" min="0" name="update_stock_quantity" value="<?php echo $fetch_update['stock_quantity']; ?>" class="box" placeholder="Nhập số lượng tồn kho" required>
    <input type="submit" value="Cập nhật sản phẩm" name="update_product" class="btn">
   </form>
   <?php
         }
      }
      }else{
         echo '<script>document.querySelector(".edit-product-form").style.display = "none";</script>';
      }
   ?>
</section>



<!-- custom admin js file link  -->
<script src="../js/admin_script.js"></script>

</body>
</html>