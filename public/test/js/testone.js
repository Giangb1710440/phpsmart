function nonett() {

    var ho = document.getElementById("ho").value;
    var ten = document.getElementById("ten").value;
    var account= document.getElementById("account").value;
    var passwd = document.getElementById("passwd").value;
    var passwdr = document.getElementById("passwdr").value;
    var email = document.getElementById("email").value;
    var sdt = document.getElementById("sdt").value;
    var letter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var kt="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$";
    var dt="([0-9]){12,}";
    // kiem tra du lieu
    if(ho == ""){
        document.getElementById("z-ho").innerHTML="nhap vao ho";
    }else{
        document.getElementById("z-ho").innerHTML="";
    }

    if(ten == ""){
        document.getElementById("z-ten").innerHTML="nhap vao ten";
    }else{
        document.getElementById("z-ten").innerHTML="";
    }

    if(account == ""){
        document.getElementById("z-account").innerHTML="nhap vao tai khoan";
    }if(account.search(" ")){
        document.getElementById("z-account").innerHTML="";
    }else {
        document.getElementById("z-account").innerHTML="bạn đã nhập sai định dạng tài khoản";
    }

    if(passwd == ""){
        document.getElementById("z-passwd").innerHTML="nhap vao mat khau";
    }else if (!email.match(kt)) {
        document.getElementById("z-passwd").style.backgroundColor = "yellow";
        document.getElementById("z-passwd").innerHTML="Bạn nhập sai định dạng mat khau";
    } else{
        document.getElementById("z-passwd").innerHTML="";
    }


    if(passwdr == ""){
        document.getElementById("z-passwdr").innerHTML="chua nhap mat khau";

    }else  if(passwdr != passwd){
        document.getElementById("z-passwdr").innerHTML="mat khau khong trung";
    }else{
        document.getElementById("z-passwdr").innerHTML="";
    }


    if(email == ""){
        document.getElementById("z-email").innerHTML="nhap vao ho";
    }else if (!email.match(letter)) {
        document.getElementById("z-email").style.backgroundColor = "yellow";
        document.getElementById("z-email").innerHTML="Bạn nhập sai định dạng email roi";
    } else{
        document.getElementById("z-email").innerHTML="";
    }


    if(sdt == ""){
        document.getElementById("z-sdt").innerHTML="nhap vao ho";
    }else{
        document.getElementById("z-sdt").innerHTML="";
    }

    if(sdt == ""){
        document.getElementById("z-sdt").innerHTML="nhap vaosdt";
    }else if (sdt.length<=11) {
        document.getElementById("z-sdt").style.backgroundColor = "yellow";
        document.getElementById("z-sdt").innerHTML="Bạn nhập sai định sdts";
    } else{
        document.getElementById("z-sdt").innerHTML="";
    }
    if(ho && ten && account && passwd && passwdr && email && sdt){
        info="Họ tên bạn là: "+ ho + ten+ "<br>";
        info+= "&nbsp&nbsp&nbspTên tài khoản: "+ account+ "<br>";
        info+= "&nbsp &nbsp email: "+ email+ "<br>";
        info+= "&nbsp &nbsp &nbsp Số điện thoại: "+ sdt+ "<br>";
        document.getElementById("id1").innerHTML=infos;
    }
}


