package Demo;
import Demo.StudentData;
import Demo.FacultyData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class demo1 {
    public Connection con;
    public demo1() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver loaded...");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/collegedb","root","");
            System.out.println("Connected to database");
        } catch (Exception ex){
            ex.printStackTrace();
        }
    }
    public String loginCheck1(String RollNumber, String Password) {
        return loginCheck("student", RollNumber, Password);
    }

    public String loginCheck2(String RollNumber, String Password) {
        return loginCheck("faculty", RollNumber, Password);
    }

   
    public String loginCheck3(String RollNumber, String Password) {
        return loginCheck("admin", RollNumber, Password);
    }

    public String loginCheck(String tableName, String RollNumber, String Password) {
        String user = null;
        try {
        	PreparedStatement ptm = con.prepareStatement("SELECT * FROM " + tableName + " WHERE RollNumber=? AND Password=?");
            ptm.setString(1, RollNumber);
            ptm.setString(2, Password);
            ResultSet rst = ptm.executeQuery();
            if (rst.next()) {
                    user = rst.getString("RollNumber");
                }
       
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public int doinsert1(String RollNumber, String Name, String Branch, String Year, String Gender) {
    	 return doinsert("student",RollNumber,Name,Branch,Year,Gender);
    	
    }
    public int doinsert2(String RollNumber, String Name, String Branch, String Year, String Gender) {
   	 return doinsert("faculty",RollNumber,Name,Branch,Year,Gender);
   	
   }
    public int doinsert(String tablename, String RollNumber,String Name, String Branch, String Year, String Gender) {
        int flag = 0;
        try {
        	PreparedStatement ptm = con.prepareStatement("INSERT INTO " +tablename+ "(RollNumber, Name, Branch, Year, Gender) VALUES (?, ?, ?, ?, ?)");

            ptm.setString(1, RollNumber);
            System.out.println("Rows updated: " +RollNumber);
            ptm.setString(2, Name);
            System.out.println("Rows updated: " +Name);
            ptm.setString(3, Branch);
            System.out.println("Rows updated: " +Branch);
            ptm.setString(4, Year);
            System.out.println("Rows updated: " +Year);
            ptm.setString(5, Gender);
            System.out.println("Rows updated: " +Gender);
            int r = ptm.executeUpdate();
            if (r > 0) {
                flag = 1;
            }
            System.out.println("Rows updated: " +r);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }


	public ArrayList<StudentData> UpdateStudent(String RollNumber)
	{
		ArrayList<StudentData> dataList=new ArrayList<StudentData>();
		try {
	
			 PreparedStatement ptm = con.prepareStatement("Select * from student Where RollNumber=?");
             ptm.setString(1, RollNumber);
             System.out.println("Rows updated: " +RollNumber);
             ResultSet rs=ptm.executeQuery();
             if(rs !=null) {
                 System.out.println("Rows updated: " +rs);
            	 
             }
            
			while(rs.next())
			{
				dataList.add(new StudentData(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)));
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return dataList;
	}
	public ArrayList<StudentData> UpdateStudent1(String RollNumber)
	{
		ArrayList<StudentData> dataList=new ArrayList<StudentData>();
		try {
	
			 PreparedStatement ptm = con.prepareStatement("Select * from faculty Where RollNumber=?");
             ptm.setString(1, RollNumber);
             System.out.println("Rows updated: " +RollNumber);
             ResultSet rs=ptm.executeQuery();
            
			while(rs.next())
			{
				dataList.add(new StudentData(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)));
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return dataList;
	}
	public ArrayList<FacultyData> UpdateFaculty(String RollNumber)
	{
		ArrayList<FacultyData> dataList=new ArrayList<FacultyData>();
		try {
	
			 PreparedStatement ptm = con.prepareStatement("Select * from faculty Where RollNumber=?");
             ptm.setString(1, RollNumber);
             System.out.println("Rows updated: " +RollNumber);
             ResultSet rs=ptm.executeQuery();
             if(rs !=null) {
                 System.out.println("Rows updated: " +rs);
            	 
             }
            
            
			while(rs.next())
			{
				dataList.add(new FacultyData(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)));
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return dataList;
	}
	public ArrayList<StudentData> UpdateStudent1()
	{
		ArrayList<StudentData> dataList=new ArrayList<StudentData>();
		try {
	
			 PreparedStatement ptm = con.prepareStatement("Select * from student ");
             ResultSet rs=ptm.executeQuery();
            
			while(rs.next())
			{
				dataList.add(new StudentData(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)));
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return dataList;
	}
	public ArrayList<FacultyData> UpdateFaculty1()
	{
		ArrayList<FacultyData> dataList=new ArrayList<FacultyData>();
		try {
	
			 PreparedStatement ptm = con.prepareStatement("Select * from faculty");
             ResultSet rs=ptm.executeQuery();
            
			while(rs.next())
			{
				dataList.add(new FacultyData(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)));
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return dataList;
	}
	public int update1(String Name, String Branch, String Year, String Gender, String RollNumber) {
		return update("student",Name,Branch,Year,Gender,RollNumber);
	}
	public int update2(String Name, String Branch, String Year, String Gender, String RollNumber) {
		return update("faculty",Name,Branch,Year,Gender,RollNumber);
	}
	public int update(String tablename,String Name, String Branch, String Year, String Gender, String RollNumber) {
	        int flag = 0;
	        try {
	            PreparedStatement ptm = con.prepareStatement( "UPDATE " +tablename+ " SET Name = ?, Branch = ?, Year = ?, Gender = ? WHERE RollNumber=?");
	            ptm.setString(1, Name);
	            System.out.println("Rows updated: " + Name);
	            ptm.setString(2, Branch);
	            System.out.println("Rows updated: " + Branch);
	            ptm.setString(3, Year);
	            System.out.println("Rows updated: " + Year);
	            ptm.setString(4, Gender);
	            System.out.println("Rows updated: " + Gender);
	            ptm.setString(5, RollNumber);
	            System.out.println("Rows updated: " + RollNumber);
	            
	            int r = ptm.executeUpdate();
	            System.out.println("Rows updated: " + r);
	            if (r > 0) {
	                flag = 1;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return flag;
	}
    public int deletestudent(String RollNumber) {
        int flag = 0;
        try {
            PreparedStatement ptm = con.prepareStatement( "Delete from student WHERE RollNumber = ?");
            ptm.setString(1, RollNumber);
            int r = ptm.executeUpdate();
            if (r > 0) {
                flag = 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
    public int deletefaculty(String RollNumber) {
        int flag = 0;
        try {
            PreparedStatement ptm = con.prepareStatement( "Delete from faculty WHERE RollNumber = ?");
            ptm.setString(1, RollNumber);
            int r = ptm.executeUpdate();
            if (r > 0) {
                flag = 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
   
}
