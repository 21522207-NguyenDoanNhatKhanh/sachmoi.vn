topbtn = document.querySelector('.to-the-top')
window.onscroll = () =>{
    if(window.scrollY > 80){
        topbtn.classList.add('active');
    }else{
        topbtn.classList.remove('active');
    }
}

window.onload = () =>{
    if(window.scrollY > 80){
        topbtn.classList.add('active');
    }else{
        topbtn.classList.remove('active');
    }
}