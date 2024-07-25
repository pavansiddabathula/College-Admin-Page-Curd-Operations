package Demo;

public class FacultyData {
	int Sno;
	String RollNumber,Name,Branch,Year,Gender,Password;
	public FacultyData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FacultyData(int sno, String rollNumber, String name, String branch, String year, String gender,
			String password) {
		super();
		Sno = sno;
		RollNumber = rollNumber;
		Name = name;
		Branch = branch;
		Year = year;
		Gender = gender;
		Password = password;
	}
	public int getSno() {
		return Sno;
	}
	public void setSno(int sno) {
		Sno = sno;
	}
	public String getRollNumber() {
		return RollNumber;
	}
	public void setRollNumber(String rollNumber) {
		RollNumber = rollNumber;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getBranch() {
		return Branch;
	}
	public void setBranch(String branch) {
		Branch = branch;
	}
	public String getYear() {
		return Year;
	}
	public void setYear(String year) {
		Year = year;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	
}
