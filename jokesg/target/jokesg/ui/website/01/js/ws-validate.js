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
    	
    	
        $("#ws_save").validate({
        	rules:{
        		name:{
        			required:true,
        			rangelength:[2,8]/*,
        			onfocusout:false,
        			remote:{
        				url:"getName.do",
        				type:"post",
        			}*/
        		},
        		email:{
        			required:true,
        			email:true
        		},
        		title:{
        			required:true,
        			rangelength:[1,8]
        		},
        		content:{
        			required:true,
        			rangelength:[1,250]
        		}
        		
        	},
    		messages:{
    			name:{
    				required:"请输入姓名",
    				rangelength:"请输入2-8个字符"
/*    				remote:"此人已经在网站发表了相关内容，请查看"
*/    			},
	        	email:{
	    			required:"请输入邮箱",
	    			email:"请输入正确的邮箱格式"
	    		},
	    		title:{
        			required:"请输入标题",
        			rangelength:"请输入1-8个字符"
        		},
        		content:{
        			required:"请输入内容",
        			rangelength:"请输入1-250个字符"
        		}
    		}
        });
    });
    
    