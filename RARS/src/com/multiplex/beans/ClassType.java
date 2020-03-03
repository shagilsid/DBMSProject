package com.multiplex.beans;

public class ClassType
{
	private String normal;
	private String executive;
	private String premium;

	public String getPremium() 
	{
		return premium;
	}

	public void setPremium(String premium) 
	{
		this.premium = premium;
	}

	public String getNormal()
	{
		return normal;
	}

	public void setNormal(String normal) 
	{
		this.normal = normal;
	}

	public String getExecutive()
	{
		return executive;
	}

	public void setExecutive(String executive) 
	{
		this.executive = executive;
	}

	@Override
	public String toString() 
	{
		return "ClassType [normal=" + normal + ", executive=" + executive + ", Premium=" + premium + "]";
	}

}
