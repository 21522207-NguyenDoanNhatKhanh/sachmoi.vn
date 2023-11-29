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

var swiper = new Swiper(".catalogs", {
    loop: true,
    autoplay: {
        delay: 2000,
        dispableOnInteraction: false,
    },
    breakpoints: {
        0: {
          slidesPerView: 1,
        },
        768: {
          slidesPerView: 2,
        },
        1385: {
          slidesPerView: 3,
        },
      },
    spaceBetween: 30,
})

var swiper = new Swiper(".authors-slider", {
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      breakpoints: {
    0: {
        slidesPerView: 1,
        },
        1100: {
        slidesPerView: 2
        },
        1170: {
        slidesPerView: 3,
        },
        1385: {
        slidesPerView: 4,
        },
      },
      grabCursor: true,
    });

var swiper = new Swiper(".new-slider", {
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        0: {
        slidesPerView: 1,
        },
        700: {
        slidesPerView: 2
        },
        1170: {
        slidesPerView: 3,
        },
        1385: {
        slidesPerView: 4,
        },
    },
    grabCursor: true,
    spaceBetween: 30,
});

var swiper = new Swiper(".cooperators-slider", {
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        0: {
            slidesPerView: 2,
        },
        1328: {
        slidesPerView: 3,
        },
        1385: {
        slidesPerView: 4,
        },
    },
    grabCursor: true,
});