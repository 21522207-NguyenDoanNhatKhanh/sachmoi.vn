








document.addEventListener('DOMContentLoaded', function () {
   document.addEventListener('click', function(event) {
      if(document.querySelector('.edit-product-form1')) {

         var isClickInsideForm = document.querySelector('.edit-product-form1').contains(event.target);
         console.log('click')
         if (!isClickInsideForm) {
            console.log('click outside')
            document.querySelector('.edit-product-form').style.display = 'none';
            // window.location.href = 'admin_products.php';
            
         }
      }
   });

   var addProductForm = document.querySelector('.add-products');
   var openAddProductBtn = document.querySelector('#open-add-product');
   if (addProductForm && openAddProductBtn) 
   openAddProductBtn.addEventListener('click', function() {
      if (addProductForm.style.display === 'block') {
         addProductForm.style.display = 'none';
         openAddProductBtn.textContent = '+'; 
      } else {
         addProductForm.style.display = 'block';
         openAddProductBtn.textContent = '-'; 
         document.body.scrollTop = 0;
         document.documentElement.scrollTop = 0;
      }
   });


   let userBox = document.querySelector('.header .header-2 .user-box');

   document.querySelector('#user-btn').onclick = () =>{
      userBox.classList.toggle('active');
      navbar.classList.remove('active');
   }
   
   let navbar = document.querySelector('.header .header-2 .navbar');
   
   document.querySelector('#menu-btn').onclick = () =>{
      navbar.classList.toggle('active');
      userBox.classList.remove('active');
   }
   
   window.onscroll = () =>{
      userBox.classList.remove('active');
      navbar.classList.remove('active');
   
      if(window.scrollY > 60){
         document.querySelector('.header .header-2').classList.add('active');
      }else{
         document.querySelector('.header .header-2').classList.remove('active');
      }
   }

         let navbar1 = document.querySelector('.header .navbar');
      let accountBox = document.querySelector('.header .account-box');

      document.querySelector('#menu-btn').onclick = () =>{
         navbar1.classList.toggle('active');
         accountBox.classList.remove('active');
      }

      document.querySelector('#user-btn').onclick = () =>{
         accountBox.classList.toggle('active');
         navbar1.classList.remove('active');
      }

      window.onscroll = () =>{
         navbar1.classList.remove('active');
         accountBox.classList.remove('active');
      }

      // document.querySelector('#close-update').onclick = () =>{
      //    document.querySelector('.edit-product-form').style.display = 'none';
      //    window.location.href = 'admin_products.php';
      // }


});