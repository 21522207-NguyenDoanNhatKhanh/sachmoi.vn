<?php
include 'config.php';
session_start();
if (!isset($_SESSION['user_id']) || $_SESSION['user_type'] !== 'admin') {
    header('Location: ../index.php');
    exit();
}


if (isset($_POST['add_partner'])) {
    $name = mysqli_real_escape_string($conn, $_POST['partner_name']);
    $link = mysqli_real_escape_string($conn, $_POST['partner_link']);
    $description = mysqli_real_escape_string($conn, $_POST['partner_description']);

    $image = $_FILES['partner_image']['name'];
    $image_size = $_FILES['partner_image']['size'];
    $image_tmp_name = $_FILES['partner_image']['tmp_name'];
    $image_folder = '../images/partners/'.$image;

    $add_partner_query = mysqli_query($conn, "INSERT INTO `partner` (name, link, description, image) VALUES ('$name', '$link', '$description', '$image')") or die('Query failed');

    if ($add_partner_query) {
        if ($image_size > 2000000) {
            $message[] = 'Kích thước ảnh quá lớn';
        } else {
            move_uploaded_file($image_tmp_name, $image_folder);
            $message[] = 'Đối tác đã được thêm thành công!';
        }
    } else {
        $message[] = 'Không thể thêm đối tác!';
    }
}

if (isset($_GET['delete'])) {
    $delete_partner_id = $_GET['delete'];

    $delete_image_query = mysqli_query($conn, "SELECT image FROM `partner` WHERE id = '$delete_partner_id'") or die('Query failed');
    $fetch_delete_image = mysqli_fetch_assoc($delete_image_query);
    unlink('../images/partners/'.$fetch_delete_image['Image']);

    mysqli_query($conn, "DELETE FROM `partner` WHERE id = '$delete_partner_id'") or die('Query failed');

    header('location: admin_partners.php');
}


if(isset($_POST['update_partner'])){
   $update_partner_id = $_POST['update_partner_id'];
   $update_partner_name = mysqli_real_escape_string($conn, $_POST['update_partner_name']);
   $update_partner_description = mysqli_real_escape_string($conn, $_POST['update_partner_description']);
   $update_partner_image = $_FILES['update_partner_image']['name'];
   $update_partner_image_tmp_name = $_FILES['update_partner_image']['tmp_name'];
   $update_partner_image_size = $_FILES['update_partner_image']['size'];
   $update_partner_folder = '../images/partners/'.$update_partner_image;
   $update_partner_old_image = $_POST['update_old_image'];

   mysqli_query($conn, "UPDATE `partner` SET name = '$update_partner_name', description = '$update_partner_description' WHERE id = '$update_partner_id'") or die('query failed');

   if(!empty($update_partner_image)){
      if($update_partner_image_size > 2000000){
         $message[] = 'Kích thước file quá lớn';
      }else{
         mysqli_query($conn, "UPDATE `partner` SET Image = '$update_partner_image' WHERE id = '$update_partner_id'") or die('query failed');
         move_uploaded_file($update_partner_image_tmp_name, $update_partner_folder);
         unlink('../images/partners/'.$update_partner_old_image);
      }
   }

   header('location:admin_partners.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Đối tác</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="../style/admin_style.css">
</head>
<body>

    <?php include 'admin_header.php'; ?>

    <!-- Thêm mới đối tác -->
    <section class="add-products">
        <form action="" method="post" enctype="multipart/form-data">
            <h3>Thêm mới đối tác</h3>
            <input type="text" name="partner_name" class="box" placeholder="Nhập tên đối tác" required>
            <input type="text" name="partner_link" class="box" placeholder="Nhập đường link của đối tác" required>
            <textarea name="partner_description" class="box" placeholder="Nhập mô tả về đối tác" ></textarea>
            <input type="file" name="partner_image" accept="image/jpg, image/jpeg, image/png, image/webp, image/svg+xml" class="box" required>
            <input type="submit" value="Thêm đối tác" name="add_partner" class="btn">
        </form>
    </section>

    <!-- Hiển thị danh sách đối tác -->
    <section class="show-products">
        <div class="box-container">
            <?php
                $select_partners = mysqli_query($conn, "SELECT * FROM `partner`") or die('Query failed');
                if (mysqli_num_rows($select_partners) > 0) {
                    while ($fetch_partners = mysqli_fetch_assoc($select_partners)) {
            ?>
            <div class="box">
                <img src="../images/partners/<?php echo $fetch_partners['Image']; ?>" alt="">
                <div class="name"><?php echo $fetch_partners['name']; ?></div>
         <a href="admin_partners.php?update=<?php echo $fetch_partners['id']; ?>" class="option-btn">update</a>
                <a href="admin_partners.php?delete=<?php echo $fetch_partners['id']; ?>" class="delete-btn" onclick="return confirm('Xóa đối tác này?');">Xóa</a>
            </div>
            <?php
                    }
                } else {
                    echo '<p class="empty">Chưa có đối tác nào được thêm!</p>';
                }
            ?>
        </div>
    </section>


<section class="edit-product-form">
   <?php
      if(isset($_GET['update'])){
         $update_id = $_GET['update'];
         $update_query = mysqli_query($conn, "SELECT * FROM `partner` WHERE id = '$update_id'") or die('query failed');
         if(mysqli_num_rows($update_query) > 0){
            while($fetch_update = mysqli_fetch_assoc($update_query)){
   ?>
   <form class="edit-product-form1" action="" method="post" enctype="multipart/form-data">
      <input type="hidden" name="update_partner_id" value="<?php echo $fetch_update['id']; ?>">
      <input type="hidden" name="update_old_image" value="<?php echo $fetch_update['Image']; ?>">
      <img src="../images/partners/<?php echo $fetch_update['Image']; ?>" alt="">
      <input type="text" name="update_partner_name" value="<?php echo $fetch_update['name']; ?>" class="box" required placeholder="Nhập tên tác giả">

      <input type="file" name="update_partner_image" accept="image/jpg, image/jpeg, image/png, image/webp, image/svg+xml" class="box">
      <textarea name="update_partner_description" class="box" placeholder="Nhập mô tả"><?php echo $fetch_update['description']; ?></textarea>
      <input type="submit" value="Cập nhật tác giả" name="update_partner" class="btn">
   </form>
   <?php
            }
         }
      }else{
         echo '<script>document.querySelector(".edit-product-form").style.display = "none";</script>';
      }
   ?>
</section>


