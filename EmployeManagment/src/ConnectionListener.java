import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ConnectionListener implements ServletContextListener
{

	public void contextInitialized(ServletContextEvent sce)
	{
		ServletContext context=sce.getServletContext();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","mysql");
			PreparedStatement psinsert=cn.prepareStatement("insert into employeedata values(?,?,?,?,?,?)");
			context.setAttribute("insert",psinsert);
			Statement list=cn.createStatement();
			context.setAttribute("list",list);
			PreparedStatement psSearch=cn.prepareStatement("select * from employeedata where eid=?");
			context.setAttribute("search", psSearch);
			PreparedStatement psdelete=cn.prepareStatement("delete from employeedata where eid=?");
			context.setAttribute("delete", psdelete);
			PreparedStatement psupdate=cn.prepareStatement("update employeedata set firstname=?,lastname=?,address=?,email=?,phoneno=? where eid=?");
			context.setAttribute("update", psupdate);
			
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
	}
  
}
