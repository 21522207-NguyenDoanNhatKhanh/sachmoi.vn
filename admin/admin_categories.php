<?php

include 'config.php';
session_start();

if (!isset($_SESSION['user_id']) || $_SESSION['user_type'] !== 'admin') {
    header('Location: ../index.php');
    exit();
}
// Thêm mới danh mục
if (isset($_POST['add_category'])) {
    $category_name = mysqli_real_escape_string($conn, $_POST['category_name']);
    $category_description = mysqli_real_escape_string($conn, $_POST['category_description']);
        $image = $_FILES['image']['name'];
        $image_size = $_FILES['image']['size'];
        $image_tmp_name = $_FILES['image']['tmp_name'];
        $image_folder = '../images/genres/' . $image;

    // Kiểm tra xem tên danh mục đã tồn tại hay chưa
    $select_category_name = mysqli_query($conn, "SELECT name FROM `product_category` WHERE name = '$category_name'") or die('Query failed');
    
    if (mysqli_num_rows($select_category_name) > 0) {
        $message[] = 'Tên danh mục đã tồn tại';
    } else {
        // Tiếp tục thêm mới nếu tên danh mục chưa tồn tại

        $add_category_query = mysqli_query($conn, "INSERT INTO `product_category` (name, description, Image) VALUES ('$category_name', '$category_description', '$image')") or die('Query failed');

        if ($add_category_query) {
            // Tiếp tục xử lý ảnh
            if ($image_size > 2000000) {
                $message[] = 'Kích thước ảnh quá lớn';
            } else {
                move_uploaded_file($image_tmp_name, $image_folder);
                $message[] = 'Danh mục đã được thêm thành công!';
            }
        } else {
            $message[] = 'Không thể thêm danh mục!';
        }
    }
}


if(isset($_GET['delete'])){
    $delete_id = $_GET['delete'];
    $delete_image_query = mysqli_query($conn, "SELECT image FROM `product_category` WHERE id = '$delete_id'") or die('query failed');
    $fetch_delete_image = mysqli_fetch_assoc($delete_image_query);
    unlink('../images/genres/'.$fetch_delete_image['image']);
    mysqli_query($conn, "DELETE FROM `product_category` WHERE id = '$delete_id'") or die('query failed');
    header('location:admin_categories.php');
 }

 // Cập nhật danh mục
if (isset($_POST['update_category'])) {
    $update_category_id = $_POST['update_category_id'];
    $update_category_name = mysqli_real_escape_string($conn, $_POST['update_category_name']);
    $update_category_description = mysqli_real_escape_string($conn, $_POST['update_category_description']);

    // Kiểm tra xem tên danh mục đã tồn tại hay chưa (nếu khác ID của danh mục đang cập nhật)
    $select_category_name = mysqli_query($conn, "SELECT name FROM `product_category` WHERE name = '$update_category_name' AND id != '$update_category_id'") or die('Query failed');

    if (mysqli_num_rows($select_category_name) > 0) {
        $message[] = 'Tên danh mục đã tồn tại';
    } else {
        // Tiếp tục cập nhật nếu tên danh mục chưa tồn tại hoặc giống với tên cũ
        if ($_FILES['update_image']['size'] > 0) {
            // Nếu có tệp ảnh mới được chọn
            $update_image = $_FILES['update_image']['name'];
            $update_image_size = $_FILES['update_image']['size'];
            $update_image_tmp_name = $_FILES['update_image']['tmp_name'];
            $update_image_folder = '../images/genres/' . $update_image;

            if ($update_image_size > 2000000) {
                $message[] = 'Kích thước ảnh quá lớn';
            } else {
                move_uploaded_file($update_image_tmp_name, $update_image_folder);
                // Cập nhật thông tin danh mục với ảnh mới
                mysqli_query($conn, "UPDATE `product_category` SET name = '$update_category_name', description = '$update_category_description', image = '$update_image' WHERE id = '$update_category_id'") or die('Query failed');
                $message[] = 'Danh mục đã được cập nhật thành công!';
            }
        } else {
            // Nếu không có tệp ảnh mới được chọn
            // Cập nhật thông tin danh mục không thay đổi ảnh
            mysqli_query($conn, "UPDATE `product_category` SET name = '$update_category_name', description = '$update_category_description' WHERE id = '$update_category_id'") or die('Query failed');
            $message[] = 'Danh mục đã được cập nhật thành công!';
        }
    }
   header('location:admin_categories.php');

}


?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Quản lý danh mục</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <link rel="stylesheet" href="../style/admin_style.css">
</head>
<body>

<?php include 'admin_header.php'; ?>


<section class="add-products">

   <h1 class="title">Quản lý danh mục sản phẩm</h1>
   <form action="" method="post" >
    <h3>Thêm danh mục mới</h3>    
      <input type="text" name="category_name" class="box" placeholder="Nhập tên danh mục" required>
    <input type="file" name="image" accept="image/jpg, image/jpeg, image/png, image/webp" class="box" required>
      <textarea name="category_description" class="box" placeholder="Nhập mô tả danh mục" required></textarea>
      <input type="submit" value="Thêm danh mục" name="add_category" class="btn">   
</form>

</section>



<section class="show-products">
   <div class="box-container">
      <?php
      $select_categories = mysqli_query($conn, "SELECT * FROM `product_category`") or die('Query failed');
      if (mysqli_num_rows($select_categories) > 0) {
          while ($category = mysqli_fetch_assoc($select_categories)) {
              ?>
              <div class="box">
                  <img src="../images/genres/<?php echo $category['Image']; ?>" alt="">
                  <div class="name"><?php echo $category['name']; ?></div>

                  <div class="name"><?php echo $category['description']; ?></div>
         <a href="admin_categories.php?update=<?php echo $category['id']; ?>" class="option-btn">update</a>
                  <a href="admin_categories.php?delete=<?php echo $category['id']; ?>" class="delete-btn" onclick="return confirm('Xóa danh mục này?');">Xóa</a>
              </div>
              <?php
          }
      } else {
          echo '<p class="empty">Chưa có danh mục nào được thêm!</p>';
      }
      ?>
   </div>
</section>


<section class="edit-product-form">
   <?php
      if(isset($_GET['update'])){
         $update_id = $_GET['update'];
         $update_query = mysqli_query($conn, "SELECT * FROM `product_category` WHERE id = '$update_id'") or die('query failed');
         if(mysqli_num_rows($update_query) > 0){
            while($fetch_update = mysqli_fetch_assoc($update_query)){
   ?>
   <form class="edit-product-form1" action="" method="post" enctype="multipart/form-data">
      <input type="hidden" name="update_category_id" value="<?php echo $fetch_update['id']; ?>">
      <input type="hidden" name="update_old_image" value="<?php echo $fetch_update['Image']; ?>">
      <img src="../images/genres/<?php echo $fetch_update['Image']; ?>" alt="">
      <input type="text" name="update_category_name" value="<?php echo $fetch_update['name']; ?>" class="box" required placeholder="Nhập tên tác giả">
      <!-- Thêm trường tải ảnh -->
      <input type="file" name="update_image" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
      <textarea name="update_category_description" class="box" placeholder="Nhập mô tả" required><?php echo $fetch_update['description']; ?></textarea>
      <input type="submit" value="Cập nhật tác giả" name="update_category" class="btn">
   </form>
   <?php
            }
         }
      }else{
         echo '<script>document.querySelector(".edit-product-form").style.display = "none";</script>';
      }
   ?>
</section>



<!-- Tùy chỉnh admin js file link -->
<script src="../js/admin_script.js"></script>
</body>
</html>
