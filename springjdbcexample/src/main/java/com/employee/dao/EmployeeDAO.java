package com.employee.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.employee.pojo.EmployeePojo;

@Component
public interface EmployeeDAO 
{
	public void addemployee(EmployeePojo employeepojoobj);
	public void deleteemployee(int emplyoee_id);
	public String updateemployeedata(EmployeePojo employeepojoobj);
	public List<EmployeePojo> getallrecords();
	public List<EmployeePojo> getsingleid(int id);
}
