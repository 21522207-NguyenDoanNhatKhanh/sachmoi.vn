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
const url = "http://localhost:3000/account"
fetch(url)
.then(response => response.json())
.then(data =>{
        localStorage.setItem("Account",JSON.stringify(data));
})
const INPUT = document.getElementById('form');
INPUT.addEventListener("submit",(e) => {
    e.preventDefault();
     const acc=localStorage.getItem("Account");
     const account = JSON.parse(acc);
     const username = document.getElementById("username").value;
     const password = document.getElementById("password").value;
     let k=1;
    account.forEach(item =>{
        if(item.username == username && item.password==password){
            alert("dang nhap thanh cong");
            k=0;
            window.location.href="../HomePage/homepage.html";
        }
    })
    if(k){
        alert("thong tin dang nhap chua chinh xac");
    }
 })