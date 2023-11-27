function updateCart(input) {
  var form = input.closest('.update-form');
  var productId = form.getAttribute('data-product-id');
  var quantity = input.value;

  // Sử dụng AJAX để cập nhật số lượng
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
      if (xhr.readyState === 4 && xhr.status === 200) {
          var result = JSON.parse(xhr.responseText);

          if (result.status === 'success') {
            let priceElement = document.querySelector('#product-price');
              let totalPriceElement = document.querySelector('#total-price');

              priceElement.textContent = Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(result.price);
              totalPriceElement.textContent = Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(result.totalPrice) ;
          }
      }
  };
  xhr.open('POST', 'cart/update_cart.php', true);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.send('product_id=' + productId + '&quantity=' + quantity);
}

function removeFromCart(button) {
  var form = button.closest('.remove-form');
  var productId = form.getAttribute('data-product-id');

  // Sử dụng AJAX để xoá sản phẩm
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
      if (xhr.readyState === 4 && xhr.status === 200) {
          console.log(xhr.responseText);
          location.reload();
      }
  };
  xhr.open('POST', 'cart/update_cart.php', true);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.send('product_id=' + productId + '&remove=true');
}