package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Student {
    private Integer studentId;
    private String name;
    private String email;
    private String phone;
    private String gender;
    private String dob;
    private String department;
    private String course;
    private String semester;
    private String rollNo;
    private String address;


    public Boolean deleteStudentsRecord(){
        Boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegeERP?user=root&password=1234");
            String query = "delete from students where student_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, studentId);

            int val = ps.executeUpdate();

            if (val == 1) {
                flag = true;
            }

            con.close();
            
        } catch (SQLException |ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flag;
    }


    public Boolean UpdateStudentData(){
        Boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegeERP?user=root&password=1234");
            String query ="update students set name=?,email=?,phone=?,gender=?,dob=?,department=?,course=?,semester=?,rollno=?,address=? where student_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, gender);
            ps.setString(5, dob);
            ps.setString(6, department);
            ps.setString(7, course);
            ps.setString(8, semester);
            ps.setString(9, rollNo);
            ps.setString(10, address);
            ps.setInt(11, studentId);

            ps.executeUpdate();

            con.close();

        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        }

        return flag;

    }


    public static ArrayList<Student> showAllStudents(){
        ArrayList<Student> students = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegeERP?user=root&password=1234");
            String query ="select * from students";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.studentId = rs.getInt("student_id");
                student.name = rs.getString("name");
                student.email = rs.getString("email");
                student.phone = rs.getString("phone");
                student.gender = rs.getString("gender");
                student.dob = rs.getString("dob");
                student.department = rs.getString("department");
                student.course = rs.getString("course");
                student.semester = rs.getString("semester");
                student.rollNo = rs.getString("rollno");
                student.address = rs.getString("address");

                students.add(student);
            }

            con.close();
           
        } catch (SQLException|ClassNotFoundException e) {
            e.printStackTrace();
        }

        return students;
    }


    public Boolean saveStudent(){
        Boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegeERP?user=root&password=1234");
            String query = "insert into students (name,email,phone,gender,dob,department,course,semester,rollno,address) value (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, phone);
            ps.setString(4, gender);
            ps.setString(5, dob);
            ps.setString(6, department);
            ps.setString(7, course);
            ps.setString(8, semester);
            ps.setString(9, rollNo);
            ps.setString(10, address);

            int val = ps.executeUpdate();
            if (val == 1) {
                flag = true;
            }

            con.close();

        } catch (SQLException |ClassNotFoundException e) {
            e.printStackTrace();
        }

        return flag;
    }

    
    public Student() {
    }

    
    public Student(Integer studentId,String name, String email, String phone, String gender, String dob,
            String department, String course, String semester, String rollNo, String address) {
                this.studentId = studentId;
                this.name = name;
                this.email = email;
                this.phone = phone;
                this.gender = gender;
                this.dob = dob;
                this.department = department;
                this.course = course;
                this.semester = semester;
                this.rollNo = rollNo;
                this.address = address;
    }


    public Student(String name, String email, String phone, String gender, String dob, String department, String course,
            String semester, String rollNo, String address) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.dob = dob;
        this.department = department;
        this.course = course;
        this.semester = semester;
        this.rollNo = rollNo;
        this.address = address;
    }


    public Integer getStudentId() {
        return studentId;
    }
    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
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
    public String getDob() {
        return dob;
    }
    public void setDob(String dob) {
        this.dob = dob;
    }
    public String getDepartment() {
        return department;
    }
    public void setDepartment(String department) {
        this.department = department;
    }
    public String getCourse() {
        return course;
    }
    public void setCourse(String course) {
        this.course = course;
    }
    public String getSemester() {
        return semester;
    }
    public void setSemester(String semester) {
        this.semester = semester;
    }
    public String getRollNo() {
        return rollNo;
    }
    public void setRollNo(String rollNo) {
        this.rollNo = rollNo;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
   
}
