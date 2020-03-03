package com.multiplex.beans;

public class Screen 
{
	private String screenId;
	private String screenNo;
	private int capacity;
	
	private ClassType className;

	
	public String getScreenId() 
	{
		return screenId;
	}
	public void setScreenId(String screenId)
	{
		this.screenId = screenId;
	}
	
	public String getScreenNo() 
	{
		return screenNo;
	}
	public void setScreenNo(String screenNo)
	{
		this.screenNo = screenNo;
	}
	
	public int getCapacity() 
	{
		return capacity;
	}
	public void setCapacity(int capacity)
	{
		this.capacity = capacity;
	}
	
	public ClassType getClassName() 
	{
		return className;
	}
	public void setClassName(ClassType className) 
	{
		this.className = className;
	}
	
	

}
