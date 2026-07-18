package models;

public class Faculty {
    private Integer userId;
    private String name;
    private String eamil;
    private String password;
    private String phone;
    private String gender;
    private String qualification;
    private String experience;
    private String department;
    private String designation;
    private String salary;
    private String joiningDate;
    private String address;


    public Faculty() {
    }


    public Faculty(String eamil, String password) {
        this.eamil = eamil;
        this.password = password;
    }
    
    
    public Faculty(String name, String eamil, String password, String phone, String gender, String qualification,
            String experience, String department, String designation, String salary, String joiningDate,
            String address) {
        this.name = name;
        this.eamil = eamil;
        this.password = password;
        this.phone = phone;
        this.gender = gender;
        this.qualification = qualification;
        this.experience = experience;
        this.department = department;
        this.designation = designation;
        this.salary = salary;
        this.joiningDate = joiningDate;
        this.address = address;
    }


    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEamil() {
        return eamil;
    }
    public void setEamil(String eamil) {
        this.eamil = eamil;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getQualification() {
        return qualification;
    }
    public void setQualification(String qualification) {
        this.qualification = qualification;
    }
    public String getExperience() {
        return experience;
    }
    public void setExperience(String experience) {
        this.experience = experience;
    }
    public String getDepartment() {
        return department;
    }
    public void setDepartment(String department) {
        this.department = department;
    }
    public String getDesignation() {
        return designation;
    }
    public void setDesignation(String designation) {
        this.designation = designation;
    }
    public String getSalary() {
        return salary;
    }
    public void setSalary(String salary) {
        this.salary = salary;
    }
    public String getJoiningDate() {
        return joiningDate;
    }
    public void setJoiningDate(String joiningDate) {
        this.joiningDate = joiningDate;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public Integer getUserId() {
        return userId;
    }
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Faculty [userId=" + userId + ", name=" + name + ", eamil=" + eamil + ", password=" + password
                + ", phone=" + phone + ", gender=" + gender + ", qualification=" + qualification + ", experience="
                + experience + ", department=" + department + ", designation=" + designation + ", salary=" + salary
                + ", joiningDate=" + joiningDate + ", address=" + address + ", getName()=" + getName() + ", getEamil()="
                + getEamil() + ", getClass()=" + getClass() + ", getPassword()=" + getPassword() + ", getPhone()="
                + getPhone() + ", getGender()=" + getGender() + ", getQualification()=" + getQualification()
                + ", getExperience()=" + getExperience() + ", getDepartment()=" + getDepartment()
                + ", getDesignation()=" + getDesignation() + ", getSalary()=" + getSalary() + ", getJoiningDate()="
                + getJoiningDate() + ", getAddress()=" + getAddress() + ", getUserId()=" + getUserId() + ", hashCode()="
                + hashCode() + ", toString()=" + super.toString() + "]";
    }
    
    

}
