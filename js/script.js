
    document.addEventListener('DOMContentLoaded', function () {
        var addToCartButtons = document.querySelectorAll('.add-to-cart');
        addToCartButtons.forEach(function (button) {
            button.addEventListener('click', function (event) {
                alert('Add to Cart');
                event.preventDefault();
                var productId = button.getAttribute('data-product-id');

                // Sử dụng AJAX để thêm sản phẩm vào giỏ hàng mà không cần tải lại trang
                var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        console.log(xhr.responseText)
                        console.log('Sản phẩm đã được thêm vào giỏ hàng!');
                    }
                };
                xhr.open('POST', 'cart/add_to_cart.php', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.send('product_id=' + productId);
            });
        });

        var buyButtons = document.querySelectorAll('.buy-now');
        buyButtons.forEach(function (button) {
            button.addEventListener('click', function (event) {
                event.preventDefault();
                var productId = button.getAttribute('data-product-id');

                // Sử dụng AJAX để thêm sản phẩm vào giỏ hàng mà không cần tải lại trang
                var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        console.log(xhr.responseText)
                        console.log('Sản phẩm đã được thêm vào giỏ hàng!');
                        window.location.href = 'cart.php';
                    }
                };
                xhr.open('POST', 'cart/add_to_cart.php', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.send('product_id=' + productId);
            });
        });
    });

