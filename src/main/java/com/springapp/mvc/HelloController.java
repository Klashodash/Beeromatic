package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@Controller
@RequestMapping("/")
public class HelloController
{

	public void doGet(HttpServletRequest request,
					  HttpServletResponse response)
			throws ServletException, IOException
	{

	}

	public String printWelcome(ModelMap model)
	{

		model.addAttribute("message", "Hello world!");
		return "Test";
	}

	@RequestMapping(method = RequestMethod.GET)
	public String pickABeer(ModelMap model)
	{
		// Database driver and details
		final String JDBCDRIVERNAME = "com.mysql.jdbc.Driver";
		final String DB = "jdbc:mysql://localhost:3306/Beertabase";
		final String USER = "root";
		final String PASS = "william1";

		try
		{
			Class.forName(JDBCDRIVERNAME);

			// Open a connection
			Connection conn = DriverManager.getConnection(DB, USER, PASS);

			Statement statement = conn.createStatement();
			String query;

			// Selects a random beer from the database
			query = "SELECT * FROM beer WHERE RAND()<(SELECT ((1/COUNT(*))*10) FROM beer) ORDER BY RAND() LIMIT 1";
			ResultSet resultSet = statement.executeQuery(query);

			// Cycle through resultSet and retrieve the beer data
			while(resultSet.next())
			{
				String name  = resultSet.getString("Name");
				String description = resultSet.getString("Description");
				String location = resultSet.getString("Location");
				float alccontent = resultSet.getFloat("Alccontent");

				model.addAttribute("name", name);
				model.addAttribute("image", "IMAGE");
				model.addAttribute("alccontent", alccontent);
				model.addAttribute("description", description);
				model.addAttribute("location", location);
			}

			// Shut it all down
			resultSet.close();
			statement.close();
			conn.close();
		}
		catch(SQLException se)
		{
			//Handle errors for JDBC
			se.printStackTrace();
		}
		catch(Exception e)
		{
			//Handle errors for Class.forName
			e.printStackTrace();
		}
		/*finally
		{
			//finally block used to close resources
			try
			{
				if(stmt!=null)
					stmt.close();
			}catch(SQLException se2){
			}// nothing we can do
			try
			{
				if(conn!=null)
					conn.close();
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}//end finally try
		} //end try*/

		return "Test";
	}
}