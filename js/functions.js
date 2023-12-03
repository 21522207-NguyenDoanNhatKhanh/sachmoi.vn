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



function addAddress() {
  var cities = document.getElementById("shipping-city");
  var districts = document.getElementById("shipping-district");
  var wards = document.getElementById("shipping-ward");
  console.log('addresses');

  var xhr = new XMLHttpRequest();
  xhr.open("GET", "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json", true);
  xhr.onreadystatechange = function() {
      if (xhr.readyState == 4 && xhr.status == 200) {
          var result = JSON.parse(xhr.responseText);
          renderCity(result);
      } else if (xhr.status != 200) {
          console.error("Error fetching data:", xhr.statusText);
      }
  };
  xhr.send();

  function renderCity(data) {
      cities.innerHTML = '<option value="" selected>Chọn tỉnh thành</option>';

      data.forEach(function(item) {
          cities.innerHTML += '<option value="' + item.Id + '">' + item.Name + '</option>';
      });

      cities.addEventListener("change", function() {
          districts.innerHTML = '<option value="" selected>Chọn quận huyện</option>';
          wards.innerHTML = '<option value="" selected>Chọn phường xã</option>';

          if (this.value !== "") {
              var result = data.find(function(n) {
                  return n.Id === cities.value;
              });

              result.Districts.forEach(function(item) {
                  districts.innerHTML += '<option value="' + item.Id + '">' + item.Name + '</option>';
              });
          }
      });

      districts.addEventListener("change", function() {
          wards.innerHTML = '<option value="" selected>Chọn phường xã</option>';

          var dataCity = data.find(function(n) {
              return n.Id === cities.value;
          });

          if (this.value !== "") {
              var dataWards = dataCity.Districts.find(function(n) {
                  return n.Id === districts.value;
              }).Wards;

              dataWards.forEach(function(item) {
                  wards.innerHTML += '<option value="' + item.Id + '">' + item.Name + '</option>';
              });
          }
      });
  }
}