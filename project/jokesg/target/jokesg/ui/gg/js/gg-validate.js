    $(document).ready(function (c) {
        $('.close').on('click', function (c) {
            $('.login-form').fadeOut('slow', function (c) {
                $('.login-form').remove();
            });
        });
    });
    
    $().ready(function() {
    	jQuery.validator.addMethod("isMobile", function(value, element) {
    	    var length = value.length;
    	    var mobile = /^1[3|4|5|7|8][0-9]{9}$/;
    	    return this.optional(element) || (length == 11 && mobile.test(value));
    	}, "非法手机号.");
    	
    	
    	jQuery.validator.addMethod("",function(){
    		
    	},"");
    	
    	
        $("#gg_form_register").validate({
        	rules:{
        		email:{
        			required:true,
        			email:true,
        			onfocusout:false,
        			remote:{
        				url:"checkUsername.do",
        				type:"post",
        			}
        		},
        		password:{
        			required:true,
        			rangelength:[6,16],
        			onfocusout:false
        		},
        		confirmPassword:{
        			required:true,
        			rangelength:[6,16],
        			equalTo:password,
        			onfocusout:false
        		},
        		nickname:{
        			required:false
        		},
        		phone:{
        			isMobile:true,
        			required:true,
        			onfocusout:false
        		}
        	},
    		messages:{
    			email:{
    				required:"你还没有输入邮箱哟,亲",
    				email:"邮箱格式不正确哟,亲",
    				remote:"该邮箱已被人注册,请重新输入"
    			},
        		password:{
        			required:"你还没有输入密码哟,亲",
        			rangelength:"密码必须在6-16位之间哟,亲"
        		},
    			confirmPassword:{
        			required:"你还没有确认你的密码哟,亲",
        			rangelength:"确认密码也必须在6-16位之间哟,亲",
        			equalTo:"两次密码必须一样哟,亲",
        		},
        		phone:{
        			required:"留个手机号吧,亲",
        		}
    		}
        });
    });
    
    