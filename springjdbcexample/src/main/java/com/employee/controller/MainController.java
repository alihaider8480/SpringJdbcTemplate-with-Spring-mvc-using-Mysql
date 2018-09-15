package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.employee.dao_impl.EmployeeDAOImpl;
import com.employee.pojo.EmployeePojo;

@Controller
public class MainController 
{
	
	@Autowired
	private EmployeeDAOImpl employeedaoimpl;
	
	@RequestMapping("/")
	public String fun(Model model)
	{
		List<EmployeePojo> list1;
		list1 =   employeedaoimpl.getallrecords();
		model.addAttribute("final_list",list1);
		
		return "index";
	}
	
	@RequestMapping("/delete/{ID}")
	private String deleteemployeeby(@PathVariable("ID") int emp_id)
	{
		employeedaoimpl.deleteemployee(emp_id);
		return "c";
	}

	@RequestMapping("/update")
	private String updateemployees(@ModelAttribute("employepojo_cheacks") EmployeePojo employeepojo_obj2,BindingResult bind,Model model)
	{
		if(bind.hasErrors())
		{
		    model.addAttribute("error1","Try Again");
		}
		model.addAttribute("update_message",employeedaoimpl.updateemployeedata(employeepojo_obj2));
		return "redirect:/";
	}
	
	
	@RequestMapping("/search single id/{E_ID}")
	public String showsinglerecord(@PathVariable("E_ID") int id,Model model)
	{
		List<EmployeePojo> list3;
		list3 = employeedaoimpl.getsingleid(id);
		model.addAttribute("show_single_record",list3);
		return "show_single_record_emp";
	}
	
	@RequestMapping(value="/insert" , method=RequestMethod.POST)
	public String goinsertpagereq(@ModelAttribute("employepojo_cheack") EmployeePojo employeepojo_obj1,BindingResult bind,Model model)
	{
		if(bind.hasErrors())
		{
		    model.addAttribute("error1","Try Again");
		}
		else
		{
			employeedaoimpl.addemployee(employeepojo_obj1);
			model.addAttribute("error1","SuccessFully Inserted");
		}
		
		return "insertpage";
		
	}
	
	@RequestMapping(value="/insertpage")
	public String goinsertpage()
	{
		return "insertpage";	
	}
}
