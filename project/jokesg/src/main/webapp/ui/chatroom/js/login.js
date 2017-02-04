$(document).ready(function(){
    //全局ajax开始事件
    $("#msg").ajaxStart(function(){
        $(this).html("正在登陆聊天室中···")
    })

    $("#btnLogin").bind("click",function(){
        var $name = $("#txtName")
        var $password = $("#txtPassword")
        if($name.val()==""){
            alert("用户名不能为空")
            $name.focus()
            return false
        }else if($password.val()==""){
            alert("密码不能为空")
            $password.focus()
            return false
        }else{
            userLogin($name.val(),$password.val())
        }
    })
})

//ajax登陆处理
function userLogin(name,password){
    $.ajax({
        type:"GET",
        url:"login.html",
        data:{"name":name,"password":password},
        dataType:'text',
        success:function(data){
            if(data == "success"){
            	window.location.href="/chatroom/user/toChatMain.html";
            }else{
                $("#msg").html("用户名或密码错误，请重新登录")
                return false
            }
        }
    })
}
