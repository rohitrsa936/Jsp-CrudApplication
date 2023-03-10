/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author PC
 */
import java.sql.*;
import java.util.*;
import bean.User;
public class UserDao {
    
    public static Connection getConnection()
    {
        Connection con=null;
        
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student1","root","1234");
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
       
     return con;   
    }
    
    public static int save(User u)
    {
      int status=0;
      try
      {
          Connection con=getConnection();
          PreparedStatement ps=con.prepareStatement("INSERT INTO register(id,name,password,email,sex,country)VALUES(?,?,?,?,?,?)");
          ps.setInt(1,u.getId());
          ps.setString(2,u.getName());
          ps.setString(3,u.getPassword());
          ps.setString(4,u.getEmail());
          ps.setString(5,u.getSex());
          ps.setString(6,u.getCountry());
          status=ps.executeUpdate();
      }
      catch(Exception e)
      {
          e.printStackTrace();
      }
     return status;   
    }
    
    public static int update(User u)
    {
        int status=0;
        try
        {
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("UPDATE register SET name=?,password=?,email=?,sex=?,country=? WHERE id=?");
            ps.setString(1,u.getName());
            ps.setString(2,u.getPassword());
            ps.setString(3,u.getEmail());
            ps.setString(4,u.getSex());
            ps.setString(5,u.getCountry());
            ps.setInt(6,u.getId());
            
           status=ps.executeUpdate(); 
              
            
        }
        catch(Exception e)
        {
           e.printStackTrace();
         }
      return status;  
    }
    public static int delete(User u)
    {
        int status=0;
        try
        {
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("DELETE FROM register WHERE id=?");
              ps.setInt(1,u.getId());
              status=ps.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return status;
    }
      public static List<User> getAllRecords()
      {
        List<User> list=new ArrayList<User>();
        try
        {
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("SELECT*FROM register");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                User u=new User();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setSex(rs.getString("sex"));
                u.setCountry(rs.getString("country"));
                list.add(u);
                
                
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
        }
        System.out.print(list);
        return list;
      }
      public static User getRecordById(int id)
      {
          User u=null;
          try
        {
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("SELECT * FROM register WHERE id=?");
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                u=new User();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setPassword(rs.getString("password"));
                u.setEmail(rs.getString("email"));
                u.setSex(rs.getString("sex"));
                u.setCountry(rs.getString("country"));
              
               
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
        }
          
          return u;
          
      }
      public static int check(User u)
    {
      int status=0;
      try
      {
          Connection con=getConnection();
          PreparedStatement ps=con.prepareStatement("SELECT * FROM register WHERE email=? AND password=?");
          ps.setString(1,u.getEmail());
          ps.setString(2,u.getPassword());
           ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                System.out.print("hiiii");
               status=1;
               break;
            }
      }
      catch(Exception e)
      {
          e.printStackTrace();
      }
     return status;   
    }
    
    
}
