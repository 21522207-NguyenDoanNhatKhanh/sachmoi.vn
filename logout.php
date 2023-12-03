<?php
session_start();

// Hủy tất cả các biến session
$_SESSION = array();

// Hủy session
session_destroy();

header("Location: index.php");
exit();
?>
