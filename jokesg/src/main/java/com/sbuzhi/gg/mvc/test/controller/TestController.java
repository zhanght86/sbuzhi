package com.sbuzhi.gg.mvc.test.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sbuzhi.gg.mvc.sys.entity.User;
/**
 * 测试控制器
 * @author stealth.Lee
 * @date 2016年11月3日 下午2:07:10
 */
@Controller
@RequestMapping(value = {"t"})
public class TestController {
	
	@RequestMapping(value = "t")
	public String index(){
		return "sys/userInfo";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
    public ModelAndView add(@ModelAttribute User user, BindingResult result) {
        ModelAndView view = new ModelAndView("/TestAnnotationValid/index");
        view.addObject("user", user);
        
        if(result.hasErrors()) {
            List<FieldError> errors = result.getFieldErrors();
            for(FieldError err : errors) {
                System.out.println("ObjectName:" + err.getObjectName() + "\tFieldName:" + err.getField()
                        + "\tFieldValue:" + err.getRejectedValue() + "\tMessage:" + err.getDefaultMessage() + "\tCode:");
            }
        }
        return view;
    }
	
}
