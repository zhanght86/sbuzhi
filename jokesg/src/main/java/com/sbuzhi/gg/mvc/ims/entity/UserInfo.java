package com.sbuzhi.gg.mvc.ims.entity;

import com.sbuzhi.gg.web.entity.DataEntity;
/**
 * 用户信息实体
 * @author stealth.Lee
 * @date 2016年11月22日 下午3:21:41
 */
public class UserInfo extends DataEntity<UserInfo> {
	
	/**
	 * 真实姓名
	 */
	private String name;
	
	/**
	 * 英文名称
	 */
	private String enName;
	
	/**
	 * 性别
	 */
	private String sex;
	
	/**
	 * 年龄
	 */
	private String age;
	
	/**
	 * 手机号
	 */
	private String telPhone;
	
	/**
	 * 身份证号
	 */
	private String idCard;
	
	/**
	 * 地址
	 */
	private String address;
	
	/**
	 * 所在地
	 */
	private String seat;
	
	/**
	 * 故乡
	 */
	private String hometown;
	
	/**
	 * 生日
	 */
	private String birth;
	
	/**
	 * 生肖
	 */
	private String twelveZodiac;
	
	/**
	 * 星座
	 */
	private String zodiac;
	
	/**
	 * 血型
	 */
	private String bloodType;
	
	/**
	 * 职业
	 */
	private String profession;
	
	/**
	 * 学校
	 */
	private String school;
	
	/**
	 * 学历
	 */
	private String academic;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getTelPhone() {
		return telPhone;
	}

	public void setTelPhone(String telPhone) {
		this.telPhone = telPhone;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getHometown() {
		return hometown;
	}

	public void setHometown(String hometown) {
		this.hometown = hometown;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTwelveZodiac() {
		return twelveZodiac;
	}

	public void setTwelveZodiac(String twelveZodiac) {
		this.twelveZodiac = twelveZodiac;
	}

	public String getZodiac() {
		return zodiac;
	}

	public void setZodiac(String zodiac) {
		this.zodiac = zodiac;
	}

	public String getBloodType() {
		return bloodType;
	}

	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAcademic() {
		return academic;
	}

	public void setAcademic(String academic) {
		this.academic = academic;
	}

	@Override
	public String toString() {
		return "UserInfo [name=" + name + ", enName="
				+ enName + ", sex=" + sex + ", age=" + age + ", telPhone="
				+ telPhone + ", idCard=" + idCard + ", address=" + address
				+ ", seat=" + seat + ", hometown=" + hometown + ", birth="
				+ birth + ", twelveZodiac=" + twelveZodiac + ", zodiac="
				+ zodiac + ", bloodType=" + bloodType + ", profession="
				+ profession + ", school=" + school + ", academic=" + academic
				+ ", insertBy=" + insertBy + ", insertDate=" + insertDate
				+ ", updateBy=" + updateBy + ", updateDate=" + updateDate
				+ ", remarks=" + remarks + ", delFlag=" + delFlag + ", id="
				+ id + ", isNewRecord=" + isNewRecord + "]";
	}
	
}
