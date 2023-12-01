<?php
   include 'config.php';
   session_start();

   if (!isset($_SESSION['user_id']) || $_SESSION['user_type'] !== 'admin') {
      header('Location: ../index.php');
      exit();
   }

   if(isset($_POST['add_author'])){
      $name = mysqli_real_escape_string($conn, $_POST['name']);
      $description = mysqli_real_escape_string($conn, $_POST['description']);
      $image = $_FILES['image']['name'];
      $image_size = $_FILES['image']['size'];
      $image_tmp_name = $_FILES['image']['tmp_name'];
      $image_folder = '../images/authors/'.$image;

      $select_author_name = mysqli_query($conn, "SELECT name FROM `author` WHERE name = '$name'") or die('query failed');

      if(mysqli_num_rows($select_author_name) > 0){
         $message[] = 'Tên tác giả đã tồn tại';
      }else{
         $add_author_query = mysqli_query($conn, "INSERT INTO `author`(name, description, Image) VALUES('$name', '$description', '$image')") or die('query failed');

         if($add_author_query){
            if($image_size > 2000000){
               $message[] = 'Kích thước ảnh quá lớn';
            }else{
               move_uploaded_file($image_tmp_name, $image_folder);
               $message[] = 'Tác giả đã được thêm thành công!';
            }
         }else{
            $message[] = 'Không thể thêm tác giả!';
         }
      }
   }

   if(isset($_GET['delete'])){
      $delete_id = $_GET['delete'];
      $delete_image_query = mysqli_query($conn, "SELECT image FROM `author` WHERE id = '$delete_id'") or die('query failed');
      $fetch_delete_image = mysqli_fetch_assoc($delete_image_query);
      unlink('../images/authors/'.$fetch_delete_image['image']);
      mysqli_query($conn, "DELETE FROM `author` WHERE id = '$delete_id'") or die('query failed');
      header('location:admin_products.php');
   }

   if(isset($_POST['update_author'])){
      $update_author_id = $_POST['update_author_id'];
      $update_author_name = mysqli_real_escape_string($conn, $_POST['update_author_name']);
      $update_author_description = mysqli_real_escape_string($conn, $_POST['update_author_description']);
      $update_author_image = $_FILES['update_author_image']['name'];
      $update_author_image_tmp_name = $_FILES['update_author_image']['tmp_name'];
      $update_author_image_size = $_FILES['update_author_image']['size'];
      $update_author_folder = '../images/authors/'.$update_author_image;
      $update_author_old_image = $_POST['update_old_image'];

      mysqli_query($conn, "UPDATE `author` SET name = '$update_author_name', description = '$update_author_description' WHERE id = '$update_author_id'") or die('query failed');

      if(!empty($update_author_image)){
         if($update_author_image_size > 2000000){
            $message[] = 'Kích thước file quá lớn';
         }
         else {
            mysqli_query($conn, "UPDATE `author` SET Image = '$update_author_image' WHERE id = '$update_author_id'") or die('query failed');
            move_uploaded_file($update_author_image_tmp_name, $update_author_folder);
            unlink('../images/authors/'.$update_author_old_image);
         }
      }
      header('location:admin_authors.php');
   }
?>

<!DOCTYPE html>
   <html lang="en">
      <head>
         <meta charset="UTF-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>authors</title>

         <!-- font awesome cdn link  -->
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

         <!-- custom admin css file link  -->
         <link rel="stylesheet" href="../style/admin_style.css">

      </head>
      <body>
   
   <?php include 'admin_header.php'; ?>

   <!-- product CRUD section starts  -->

   <section class="add-products">

   <form action="" method="post" enctype="multipart/form-data">
      <h3>Thêm tác giả mới</h3>
      <input type="text" name="name" class="box" placeholder="Nhập tên tác giả" required>
      <!-- Thêm trường tải ảnh -->
      <input type="file" name="image" accept="image/jpg, image/jpeg, image/png, image/webp" class="box" required>
      <textarea name="description" class="box" placeholder="Nhập mô tả" required></textarea>
      <input type="submit" value="Thêm tác giả" name="add_author" class="btn">
   </form>


   </section>

   <!-- product CRUD section ends -->

   <!-- show products  -->

   <section class="show-products">
      <div class="box-container">
         <?php
            $select_authors = mysqli_query($conn, "SELECT * FROM `author`") or die('query failed');
            if(mysqli_num_rows($select_authors) > 0){
               while($fetch_authors = mysqli_fetch_assoc($select_authors)){
         ?>
         <div class="box">
            <img src="../images/authors/<?php echo $fetch_authors['Image']; ?>" alt="">
            <div class="name"><?php echo $fetch_authors['name']; ?></div>
            <!-- Hiển thị các thông tin khác của tác giả -->
            <a href="admin_authors.php?update=<?php echo $fetch_authors['id']; ?>" class="option-btn">update</a>
            <a href="admin_authors.php?delete=<?php echo $fetch_authors['id']; ?>" class="delete-btn" onclick="return confirm('Xóa tác giả này?');">delete</a>
         </div>
         <?php
               }
            }else{
               echo '<p class="empty">Chưa có tác giả nào được thêm!</p>';
            }
         ?>
      </div>
   </section>

   <section class="edit-product-form">
      <?php
         if(isset($_GET['update'])){
            $update_id = $_GET['update'];
            $update_query = mysqli_query($conn, "SELECT * FROM `author` WHERE id = '$update_id'") or die('query failed');
            if(mysqli_num_rows($update_query) > 0){
               while($fetch_update = mysqli_fetch_assoc($update_query)){
      ?>
      <form class="edit-product-form1" action="" method="post" enctype="multipart/form-data">
         <input type="hidden" name="update_author_id" value="<?php echo $fetch_update['id']; ?>">
         <input type="hidden" name="update_old_image" value="<?php echo $fetch_update['Image']; ?>">
         <img src="../images/authors/<?php echo $fetch_update['Image']; ?>" alt="">
         <input type="text" name="update_author_name" value="<?php echo $fetch_update['name']; ?>" class="box" required placeholder="Nhập tên tác giả">
         <!-- Thêm trường tải ảnh -->
         <input type="file" name="update_author_image" accept="image/jpg, image/jpeg, image/png, image/webp" class="box">
         <textarea name="update_author_description" class="box" placeholder="Nhập mô tả" required><?php echo $fetch_update['description']; ?></textarea>
         <input type="submit" value="Cập nhật tác giả" name="update_author" class="btn">
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