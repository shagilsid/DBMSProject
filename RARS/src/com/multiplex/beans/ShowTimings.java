package com.multiplex.beans;

public class ShowTimings 
{

	private String morningShow;
	private String matineeShow;
	private String firstShow;
	private String secondShow;
	
	public String getMorningShow()
	{
		return morningShow;
	}
	public void setMorningShow(String morningShow) 
	{
		this.morningShow = morningShow;
	}
	
	public String getMatineeShow() 
	{
		return matineeShow;
	}
	public void setMatineeShow(String matineeShow) 
	{
		this.matineeShow = matineeShow;
	}
	
	public String getFirstShow()
	{
		return firstShow;
	}
	public void setFirstShow(String firstShow) 
	{
		this.firstShow = firstShow;
	}
	
	public String getSecondShow() 
	{
		return secondShow;
	}
	public void setSecondShow(String secondShow) {
		this.secondShow = secondShow;
	}

	@Override
	public String toString() {
		return "ShowTimings [morningShow=" + morningShow + ", matineeShow=" + matineeShow + ", firstShow=" + firstShow
				+ ", secondShow=" + secondShow + "]";
	}
	
}
