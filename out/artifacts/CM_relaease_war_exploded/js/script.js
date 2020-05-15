document.querySelector('.img__btn').addEventListener('click', function() {
    document.querySelector('.dowebok').classList.toggle('s--signup')
})
function check() {
    var pwd=document.getElementsByName("password")[0];
    var pwd2=document.getElementsByName("password_sure")[0];
    if(pwd=pwd2){
        return true;
    }

    if (pwd==null||pwd2==null){
        alert("密码不能为空");
        return  false;
    }

    if (document.getElementsByName("employeename")[0]==null){
        alert("员工名不能为空");
        return false;
    }

    if(document.getElementsByName("employeeid")[0]==null){
        alert("员工id不能为空");
        return false;
    }

    if(document.getElementsByName("phone")[0]==null){
        alert("员工编号不能为空");
        return false;
    }

    alert("两次密码不一样");
    return false;

}