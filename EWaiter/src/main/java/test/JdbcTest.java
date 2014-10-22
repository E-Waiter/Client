package test;




import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class JdbcTest 
{
	public static void main(String[] args) {
	    try{   
	        //加载MySql的驱动类   
	        Class.forName("com.mysql.jdbc.Driver") ;   
	        }catch(ClassNotFoundException e){   
	        System.out.println("找不到驱动程序类 ，加载驱动失败！");   
	        e.printStackTrace() ;   
	        }   
	    //连接MySql数据库，用户名和密码都是root   
	     String url = "jdbc:mysql://182.254.136.161:3306/EWaiter?useUnicode=true&amp;characterEncoding=UTF-8" ;    
	     String username = "keres" ;   
	     String password = "Wangduanpei5" ;
	     System.out.println("test");
	     try{   
	    Connection con =    
	             DriverManager.getConnection(url , username , password ) ;   
	     }catch(SQLException se){   
	    System.out.println("数据库连接失败！");   
	    se.printStackTrace() ;   
	     }   
	}
}
