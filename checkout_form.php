<?php
include 'includes/header.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sachmoi.vn</title>
<link rel="stylesheet" href="style/checkout.css">
<link
rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
/>
<link
rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
/>
</head>
<body>

<section class="checkform">
  <div class="site-wrapper">
    <div class="container">
      <h2>Thông tin đặt hàng</h2>
      <form action="process_order.php" method="post">
        <div class="input-box">
          <label for="">Họ và tên: </label>
          <input type="text" id="username" name="name" required>
        </div>
        <div class="input-box">
          <label for="">Số điện thoại: </label>
          <input type="tel" oninput="this.value = this.value.replace(/[^0-9]/g, '')" name="number" required>
        </div>
        <div class="input-box">
          <label for="shipping-city">Tỉnh thành: </label>
          <select required id="shipping-city" name="shipping-city" autocomplete="country-name" onchange="updateHiddenText('shipping-city', 'shipping-city-text')">
            <option value="">Chọn tỉnh thành</option>
          </select>
          <ion-icon name="navigate-outline"></ion-icon>
        </div>
        <div class="input-box">
          <label for="shipping-district">Quận huyện: </label>
          <select required id="shipping-district" name="shipping-district" autocomplete="country-name" onchange="updateHiddenText('shipping-district', 'shipping-district-text')">
            <option value="">Chọn quận huyện</option>
          </select>
        </div>
        <div class="input-box">
          <label for="shipping-ward">Phường xã: </label>
          <select required id="shipping-ward" name="shipping-ward" autocomplete="country-name" onchange="updateHiddenText('shipping-ward', 'shipping-ward-text')">
            <option value="">Chọn phường xã</option>
          </select>
        </div>
        <div class="input-box">
          <label for="address">Địa chỉ: </label>
          <input type="text" name="address" required>
        </div>
        <button type="submit" name="place_order" class="btn">Đặt hàng</button>
      </form>
    </div>
  </div>
</section>
<!-- ionic icons -->
<script
      nomodule
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"
    ></script>
</body>

<script>
  function updateHiddenText(selectId, hiddenTextId) {
    var selectedOption = document.querySelector('#' + selectId + ' option:checked');
    var hiddenTextField = document.getElementById(hiddenTextId);

    if (selectedOption) {
      hiddenTextField.value = selectedOption.text;
    } else {
      hiddenTextField.value = '';
    }
  }


  function addAddress() {
  var cities = document.getElementById("shipping-city");
  var districts = document.getElementById("shipping-district");
  var wards = document.getElementById("shipping-ward");
  console.log('addresses');

  var xhr = new XMLHttpRequest();
  xhr.open("GET", "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json", true);
  xhr.onreadystatechange = function () {
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

    data.forEach(function (item) {
      cities.innerHTML += '<option value="' + item.Id + '">' + item.Name + '</option>';
    });

    cities.addEventListener("change", function () {
      districts.innerHTML = '<option value="" selected>Chọn quận huyện</option>';
      wards.innerHTML = '<option value="" selected>Chọn phường xã</option>';

      if (this.value !== "") {
        var result = data.find(function (n) {
          return n.Id === cities.value;
        });

        result.Districts.forEach(function (item) {
          districts.innerHTML += '<option value="' + item.Id + '">' + item.Name + '</option>';
        });
      }
    });

    districts.addEventListener("change", function () {
      wards.innerHTML = '<option value="" selected>Chọn phường xã</option>';

      var dataCity = data.find(function (n) {
        return n.Id === cities.value;
      });

      if (this.value !== "") {
        var dataWards = dataCity.Districts.find(function (n) {
          return n.Id === districts.value;
        }).Wards;

        dataWards.forEach(function (item) {
          wards.innerHTML += '<option value="' + item.Id + '">' + item.Name + '</option>';
        });
      }
    });
  }
}

document.addEventListener("DOMContentLoaded", function () {
  addAddress();
});
</script>
<?php
include 'includes/footer.php';
?>
