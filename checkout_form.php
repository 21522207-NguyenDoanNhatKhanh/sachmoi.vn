<h2>Thông tin đặt hàng</h2>
<form action="process_order.php" method="post">

    <label for="name">Họ và tên:</label>
    <input type="text" name="name" required>

    <label for="number">Số điện thoại:</label>
    <input type="text" oninput="this.value = this.value.replace(/[^0-9]/g, '')" name="number" required>

    <label for="address">Địa chỉ:</label>
    <input type="text" name="address" required>

    <!-- <div>
        <label for="shipping-country"> Tỉnh thành </label>
        <div>
            <select required id="shipping-city" name="shipping-city" autocomplete="country-name" onchange="document.querySelector('#shipping-city-text').val(document.querySelector(this).find('option:selected').text())">
                <option value="">Chọn tỉnh thành</option>
            </select>
        </div>
    </div>
    <input type="hidden" name="shipping-city-text" id="shipping-city-text" value="" />
    <div>
        <label for="shipping-country"> Quận huyện </label>
        <div class="mt-1">
            <select required id="shipping-district" name="shipping-district" autocomplete="country-name" onchange="document.querySelector('#shipping-district-text').val(document.querySelector(this).find('option:selected').text())">
                <option value="">Chọn quận huyện</option>
            </select>
        </div>
    </div>

    <input type="hidden" name="shipping-district-text" id="shipping-district-text" value="" />
    <div>
        <label for="shipping-country"> Phường xã </label>
        <div class="mt-1">
            <select required id="shipping-ward" name="shipping-ward" autocomplete="country-name" onchange="document.querySelector('#shipping-ward-text').val(document.querySelector(this).find('option:selected').text())">
                <option value="">Chọn phường xã</option>
            </select>
        </div>
    </div>
    <input type="hidden" name="shipping-ward-text" id="shipping-ward-text" value="" />

 -->

 <label for="shipping-country"> Tỉnh thành </label>
<div>
  <select required
    id="shipping-city" name="shipping-city" autocomplete="country-name"
    onchange="updateHiddenText('shipping-city', 'shipping-city-text')">
    <option value="">Chọn tỉnh thành</option>
  </select>
</div>
<input type="hidden" name="shipping-city-text" id="shipping-city-text" value="" />

<div>
  <label for="shipping-country"> Quận huyện </label>
  <div class="mt-1">
    <select required
      id="shipping-district" name="shipping-district" autocomplete="country-name"
      onchange="updateHiddenText('shipping-district', 'shipping-district-text')">
      <option value="">Chọn quận huyện</option>
    </select>
  </div>
</div>
<input type="hidden" name="shipping-district-text" id="shipping-district-text" value="" />

<div>
  <label for="shipping-country"> Phường xã </label>
  <div class="mt-1">
    <select required
      id="shipping-ward" name="shipping-ward" autocomplete="country-name"
      onchange="updateHiddenText('shipping-ward', 'shipping-ward-text')">
      <option value="">Chọn phường xã</option>
    </select>
  </div>
</div>
<input type="hidden" name="shipping-ward-text" id="shipping-ward-text" value="" />

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




    <input type="submit" name="place_order" value="Đặt hàng">

</form>