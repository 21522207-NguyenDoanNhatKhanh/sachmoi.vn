header2 = document.querySelector('.header .header2')
topbtn = document.querySelector('.to-the-top')
window.onscroll = () =>{
    if(window.scrollY > 80){
        header2.classList.add('active');
        topbtn.classList.add('active');
    }else{
        header2.classList.remove('active');
        topbtn.classList.remove('active');
    }
}

window.onload = () =>{
    if(window.scrollY > 80){
        header2.classList.add('active');
        topbtn.classList.add('active');
    }else{
        header2.classList.remove('active');
        topbtn.classList.remove('active');
    }
}
 
const cartItems = JSON.parse(localStorage.getItem("cart")) || [];
const cartTable = document.querySelector("table tbody");
const cartContainer = document.querySelector(".cart");

// Xóa nội dung ban đầu trong giỏ hàng
cartTable.innerHTML = "";

// Kiểm tra nếu giỏ hàng không có sản phẩm
if (cartItems.length === 0) {
  const emptyCartRow = document.createElement("tr");
  const emptyCartCell = document.createElement("td");
  emptyCartCell.setAttribute("colspan", "4");
  emptyCartCell.textContent = "Không có sản phẩm nào trong giỏ hàng";
  emptyCartRow.appendChild(emptyCartCell);
  cartTable.appendChild(emptyCartRow);
} else {
    cartItems.forEach((item, index) => {
      const row = document.createElement("tr");

      const productCell = document.createElement("td");
      const productImage = document.createElement("img");
      productImage.src = item.img;
      productImage.style.width = "50px";
      productImage.alt = "";
      const productName = document.createTextNode(item.name);
      productCell.appendChild(productImage);
      productCell.appendChild(productName);
      row.appendChild(productCell);

      const priceCell = document.createElement("td");
      const price = document.createElement("span");
      price.className = "price";
      price.textContent = item.price;
      priceCell.appendChild(price);
      row.appendChild(priceCell);

      const quantityCell = document.createElement("td");
      const quantityInput = document.createElement("input");
      quantityInput.style.width = "25px";
      quantityInput.style.outline = "none";
      quantityInput.type = "number";
      quantityInput.value = "1";
      quantityInput.min = "1";
      quantityCell.appendChild(quantityInput);
      row.appendChild(quantityCell);

      const deleteCell = document.createElement("td");
      const deleteButton = document.createElement("button");
      deleteButton.className = "btn";
      deleteButton.textContent = "Xóa";
      deleteButton.style.cursor = "pointer";

      // Xử lý sự kiện click để xóa sản phẩm
      deleteButton.addEventListener("click", function () {
        // Xóa sản phẩm khỏi giỏ hàng
        cartItems.splice(index, 1);

        // Cập nhật localStorage
        localStorage.setItem("cart", JSON.stringify(cartItems));

        // Xóa hàng (tr) chứa sản phẩm khỏi DOM
        cartTable.removeChild(row);
      });

      deleteCell.appendChild(deleteButton);
      row.appendChild(deleteCell);

      cartTable.appendChild(row);
    });
}