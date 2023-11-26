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
function create(data){
    fetch(url,{
        method : "POST",
        headers: {
            "Content-Type": "application/json",
          },
        body : JSON.stringify(data)
    }).then(function(response){
        response.json();
    })
    alert("dang ki thanh cong");
}
const INPUT = document.getElementById("form");
INPUT.addEventListener("submit", (e)=>{
    e.preventDefault();
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;
    const email = document.getElementById("email").value;
    if (username ==="" || password==="" || email===""){
        alert('vui long nhap day du thong tin ');
    }
    else{
        var  Account ={
            username:username,
            email : email,
            password:password
        }
        create(Account);
    }
    
})