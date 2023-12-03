<?php
include 'config.php';
session_start();

if (!isset($_SESSION['user_id']) || $_SESSION['user_type'] !== 'admin') {
    header('Location: ../index.php');
    exit();
}



if (isset($_POST['update_order'])) {
   $order_update_id = $_POST['order_id'];
   $update_payment = isset($_POST['update_payment']) ? $_POST['update_payment'] : null;
   $update_shipping = isset($_POST['update_shipping']) ? $_POST['update_shipping'] : null;

   if (!is_null($update_payment)) {
       mysqli_query($conn, "UPDATE `order` SET payment_status = '$update_payment' WHERE order_id = '$order_update_id'") or die('query failed');
   }

   if (!is_null($update_shipping)) {
       mysqli_query($conn, "UPDATE `order` SET shipping_status = '$update_shipping' WHERE order_id = '$order_update_id'") or die('query failed');
   }

   $message[] = 'Payment and shipping status have been updated!';
}


if(isset($_GET['delete'])){
   $delete_id = $_GET['delete'];
   mysqli_query($conn, "DELETE FROM `order_detail` WHERE order_id = '$delete_id'") or die('query failed');
   mysqli_query($conn, "DELETE FROM `order` WHERE order_id = '$delete_id'") or die('query failed');
   header('location:admin_orders.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>orders</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link rel="stylesheet" href="../style/admin_style.css">
</head>
<body>
   
<?php include 'admin_header.php'; ?>

<section class="orders">

   <h1 class="title">placed orders</h1>

   <div class="box-container">
      <?php
      $select_orders = mysqli_query($conn, "SELECT * FROM `order`") or die('query failed');
      if(mysqli_num_rows($select_orders) > 0){
         while($fetch_orders = mysqli_fetch_assoc($select_orders)){
      ?>
      <div class="box">
         <p> Order id : <span><?php echo $fetch_orders['order_id']; ?></span> </p>
         <p> User id : <span><?php echo $fetch_orders['user_id']; ?></span> </p>
         <p> Đặt hàng vào : <span><?php echo $fetch_orders['order_date']; ?></span> </p>
         <p> Tên : <span><?php echo $fetch_orders['name']; ?></span> </p>
         <p> SDT : <span><?php echo $fetch_orders['number']; ?></span> </p>
         <p> Dịa chỉ : <span><?php echo $fetch_orders['address']; ?></span> </p>
         <p> Số sản phẩm  : <span><?php echo $fetch_orders['total_products']; ?></span> </p>
         <p> Tổng tiền : <span><?php echo $fetch_orders['total_amount']; ?></span> </p>
         <p> Phương thức thanh toán : <span>COD</span> </p>
         <form action="" method="post">
            <input type="hidden" name="order_id" value="<?php echo $fetch_orders['order_id']; ?>">
            <select name="update_payment">
               <option value="" selected disabled><?php echo $fetch_orders['payment_status']; ?></option>
               <option value="pending">pending</option>
               <option value="completed">completed</option>
            </select>
            <select name="update_shipping">
    <option value="" selected disabled><?php echo $fetch_orders['shipping_status']; ?></option>
    <option value="pending">pending</option>
    <option value="shipped">shipped</option>
    
</select>
            <input type="submit" value="update" name="update_order" class="option-btn">
            <a href="admin_orders.php?delete=<?php echo $fetch_orders['order_id']; ?>" onclick="return confirm('delete this order?');" class="delete-btn">delete</a>
         </form>
      </div>
      <?php
         }
      }else{
         echo '<p class="empty">no orders placed yet!</p>';
      }
      ?>
   </div>

</section>





<!-- custom admin js file link  -->
<script src="../js/admin_script.js"></script>

</body>
</html>