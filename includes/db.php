<?php
function connect_db() {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "sachmoi_db";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    return $conn;
}

function close_db($conn) {
    $conn->close();
}

function get_all_books($page, $rowsPerPage, $searchTerm = '') {
    $conn = connect_db();

    $perRow = ($page - 1) * $rowsPerPage;

    $searchCondition = $searchTerm ? "WHERE `Name` LIKE '%$searchTerm%'" : '';

    $sql = "SELECT * FROM `product` $searchCondition LIMIT $perRow, $rowsPerPage";
    $result = $conn->query($sql);

    $books = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $books[] = $row;
        }
    }

    close_db($conn);
    return $books;
}

function get_books_by_category($category_id, $page, $rowsPerPage) {
    $conn = connect_db();

    $perRow = ($page - 1) * $rowsPerPage;

    $sql = "SELECT * FROM `product` WHERE `category_id` = $category_id LIMIT $perRow, $rowsPerPage";
    $result = $conn->query($sql);

    $books = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $books[] = $row;
        }
    }

    close_db($conn);
    return $books;
}

function get_book_details($book_id) {
    $conn = connect_db();

    $sql = "SELECT * FROM `product` WHERE `id` = '$book_id'";
    $result = $conn->query($sql);

    $book = null;

    if ($result->num_rows > 0) {
        $book = $result->fetch_assoc();
    }

    close_db($conn);
    return $book;
}

function get_total_rows($searchTerm = '', $category_id = null, $limit = null, $offset = null) {
    $conn = connect_db();

    if ($category_id === 'bestselling') {
        $searchCondition = '';//$searchTerm ? "WHERE `Name` LIKE '%$searchTerm%'" : '';
        $sql = "SELECT COUNT(*) as total FROM product $searchCondition ORDER BY view_count DESC";
        // if ($limit !== null) {
        //     $sql .= " LIMIT $offset, $limit";
        // }
    } else {
        $searchCondition = $searchTerm ? "WHERE `Name` LIKE '%$searchTerm%'" : '';
        $categoryCondition = $category_id !== null ? ($searchTerm ? ' AND ' : 'WHERE ') . "`category_id` = $category_id" : '';

        $sql = "SELECT COUNT(*) as total FROM `product` $searchCondition $categoryCondition";
    }
    //echo $sql;

    $result = $conn->query($sql);

    $totalRows = 0;

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $totalRows = $row['total'];
    }

    close_db($conn);

    return $totalRows;
}


function register_user($username, $email, $password, $user_type = 'customer') {
    $conn = connect_db();

    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    $sql = "INSERT INTO user (username, email, password, user_type) VALUES ('$username', '$email', '$hashed_password', '$user_type')";
    $result = $conn->query($sql);

    close_db($conn);

    return $result;
}
function login_user($username, $password) {
    $conn = connect_db();

    $sql = "SELECT * FROM user WHERE username = '$username'";
    $result = $conn->query($sql);

    if ($result->num_rows === 1) {
        $user = $result->fetch_assoc();

        if (password_verify($password, $user['password'])) {
            // Set user session
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['username'] = $user['username'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['user_type'] = $user['user_type'];

                        if ($_SESSION['user_type'] === 'admin') {
                            header('Location: admin/admin_dashboard.php');
                            exit();
                        }
            close_db($conn);

            return true;
        }
    }

    close_db($conn);

    return false;
}



function increment_view_count($book_id) {
    $conn = connect_db();
    $sql = "UPDATE product SET view_count = view_count + 1 WHERE id = $book_id";
    $conn->query($sql);
    close_db($conn);
}

function get_new_books($limit, $offset = 0) {
    $conn = connect_db();

    $sql = "SELECT * FROM product ORDER BY release_date DESC LIMIT $offset, $limit";
    $result = $conn->query($sql);

    $books = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $books[] = $row;
        }
    }

    // close_db($conn);
    // echo 'Cái này là sách mới, query theo release_date<br>';
    // foreach ($books as $book) {
    //     echo $book['name'] .'=== ' . $book['release_date'];
    //     echo '<br>';
    // }
    return $books;
}

            function get_popular_books($limit, $offset = 0) {
                $conn = connect_db();
                
                $sql = "SELECT * FROM product ORDER BY view_count DESC LIMIT $offset, $limit";
                $result = $conn->query($sql);
                
                $books = [];
                
                if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $books[] = $row;
        }
    }
    
    // close_db($conn);
    // echo 'Cái này là sách nhiều view, query theo view_count<br>';
    // foreach ($books as $book) {
    //     echo $book['name'] .'=== ' . $book['view_count'];
    //     echo '<br>';
    // }
    return $books;
}



function get_category_name($category_id) {
    $conn = connect_db();

    $sql = "SELECT `name` FROM `product_category` WHERE `id` = $category_id";
    $result = $conn->query($sql);

    $category_name = '';

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $category_name = $row['name'];
    }

    close_db($conn);

    return $category_name;
}




function is_available_quantity($product_id, $requested_quantity)
{
    $product = get_book_details($product_id);
    if ($product && $product['stock_quantity'] >= $requested_quantity) {
        return true;
    } else {
        return false;
    }
}

// Function kiểm tra xem đủ số lượng sản phẩm để đặt hàng không
function is_sufficient_quantity($cart)
{
    foreach ($cart as $product_id => $quantity) {
        $product = get_book_details($product_id);

        if (!$product || $quantity > $product['stock_quantity']) {
            return false;
        }
    }

    return true;
}

function save_order_to_database($user_id, $cart, $name, $number, $address)
{
    $conn = connect_db();

    // Start a transaction to ensure data consistency
    $conn->begin_transaction();

    try {
        // Insert the order details into the 'orders' table
        $insertOrderSql = "INSERT INTO `order` (user_id, name, number, address) VALUES ('$user_id', '$name', '$number', '$address')";
        $conn->query($insertOrderSql);

        // Get the order ID of the newly inserted order
        $order_id = $conn->insert_id;

        // Update product quantities in the 'product' table and insert order details into 'order_detail' table
        foreach ($cart as $product_id => $quantity) {
            $product = get_book_details($product_id);

            // Check if the product exists and has sufficient quantity
            if ($product && $quantity <= $product['stock_quantity']) {
                // Update the product quantity in the 'product' table
                $updateProductSql = "UPDATE product SET stock_quantity = stock_quantity - '$quantity' WHERE id = '$product_id'";
                $conn->query($updateProductSql);

                // Calculate the order amount for the product
                $order_amount = $quantity * $product['price'];

                // Insert order details into the 'order_detail' table
                $insertOrderDetailsSql = "INSERT INTO order_detail (order_id, product_id, quantity, order_amount) VALUES ('$order_id', '$product_id', '$quantity', '$order_amount')";
                $conn->query($insertOrderDetailsSql);
            } else {
                // If the product doesn't exist or doesn't have sufficient quantity, rollback the transaction
                $conn->rollback();
                close_db($conn);
                return false;
            }
        }

        // Calculate and update the total amount for the order in the 'order' table
        $updateOrderTotalSql = "UPDATE `order` SET total_amount = (SELECT SUM(order_amount) FROM order_detail WHERE order_id = '$order_id'), total_products = (SELECT SUM(quantity) FROM order_detail WHERE order_id = '$order_id') WHERE order_id = '$order_id'";
        $conn->query($updateOrderTotalSql);

        // Commit the transaction if all steps are successful
        $conn->commit();
        close_db($conn);
        return true;
    } catch (Exception $e) {
        // If an exception occurs, rollback the transaction
        $conn->rollback();
        close_db($conn);
        return false;
    }
}





function get_user_info($user_id) {
    $conn = connect_db();

    $sql = "SELECT * FROM `user` WHERE `id` = '$user_id'";
    $result = $conn->query($sql);

    $user_info = null;

    if ($result->num_rows > 0) {
        $user_info = $result->fetch_assoc();
    }

    close_db($conn);

    return $user_info;
}

function get_user_orders($user_id) {
    $conn = connect_db();

    $sql = "SELECT * FROM `order` WHERE `user_id` = '$user_id'";
    $result = $conn->query($sql);

    $orders = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $orders[] = $row;
        }
    }

    close_db($conn);

    return $orders;
}


function search_books($search_query) {
    $conn = connect_db();

    $search_query = mysqli_real_escape_string($conn, $search_query);

    $sql = "SELECT * FROM `product` WHERE `name` LIKE '%$search_query%'";
    $result = $conn->query($sql);

    $books = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $books[] = $row;
        }
    }

    close_db($conn);
    
    return $books;
}


function get_partners() {
    $conn = connect_db();

    $sql = "SELECT * FROM partner";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $partners = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $partners[] = $row;
        }
    close_db($conn);
        return $partners;
    } else {
    close_db($conn);
        return null;
    }
}

function get_partner_by_id($partnerId) {
    $conn = connect_db();
    
    $partnerId = mysqli_real_escape_string($conn, $partnerId);
    
    $sql = "SELECT * FROM partner WHERE id = '$partnerId'";
    $result = mysqli_query($conn, $sql);
    
    if ($result) {
        $partner = mysqli_fetch_assoc($result);
        
        close_db($conn);
        return $partner;
    } else {
        echo "Query Error: " . mysqli_error($conn);
        close_db($conn);
        return null;
    }
}
function get_genres() {
    $conn = connect_db();
    
    $sql = "SELECT * FROM product_category";
    $result = mysqli_query($conn, $sql);
    
    if ($result) {
        $genres = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $genres[] = $row;
        }
        close_db($conn);
        return $genres;
    } else {
        close_db($conn);
        return null;
    }
}

function get_authors() {
    $conn = connect_db();
    
    $sql = "SELECT * FROM author";
    $result = mysqli_query($conn, $sql);
    
    if ($result) {
        $authors = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $authors[] = $row;
        }
        close_db($conn);
        return $authors;
    } else {
        close_db($conn);
        return null;
    }
}

function get_author_by_id($authorId) {
    $conn = connect_db();
    
    $authorId = mysqli_real_escape_string($conn, $authorId);
    
    $sql = "SELECT * FROM author WHERE id = '$authorId'";
    $result = mysqli_query($conn, $sql);
    
    if ($result) {
        $author = mysqli_fetch_assoc($result);
        
        close_db($conn);
        return $author;
    } else {
        echo "Query Error: " . mysqli_error($conn);
        close_db($conn);
        return null;
    }
}
?>
