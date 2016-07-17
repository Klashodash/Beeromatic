/*
Created by IntelliJ IDEA.
User: William O'Leary
Date: 12/07/2016
Time: 14:20

*/

package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.*;

@Controller
@RequestMapping("/")
public class BeerController
{

	@RequestMapping(method = RequestMethod.GET)
	public String pickABeer(ModelMap model)
	{
		// Database driver and details
		final String JDBCDRIVERNAME = "com.mysql.jdbc.Driver";
		final String DB = "jdbc:mysql://localhost:3306/Beertabase";
		final String USER = "root";
		final String PASS = "william1";

		Connection conn = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try
		{
			Class.forName(JDBCDRIVERNAME);

			// Open a connection
			conn = DriverManager.getConnection(DB, USER, PASS);

			statement = conn.createStatement();
			String query;

			// Selects a random beer from the database
			// According to my notes, this scales better than the standard
			// SELECT * FROM myTable ORDER BY RAND() LIMIT 1;
			query = "SELECT * FROM beer WHERE RAND()<(SELECT ((1/COUNT(*))*10) FROM beer) ORDER BY RAND() LIMIT 1";
			resultSet = statement.executeQuery(query);

			// Cycle through resultSet and retrieve the beer data
			while(resultSet.next())
			{
				String name  = resultSet.getString("Name");
				String description = resultSet.getString("Description");
				String location = resultSet.getString("Location");
				float alccontent = resultSet.getFloat("Alccontent");
				String image = resultSet.getString("Image");

				model.addAttribute("name", name);
				model.addAttribute("image", image);
				model.addAttribute("alccontent", alccontent);
				model.addAttribute("description", description);
				model.addAttribute("location", location);
			}
		}
		catch(SQLException sqlException)
		{
			// Deals with any JDBC errors
			sqlException.printStackTrace();
		}
		catch(Exception e)
		{
			// Deals with errors relating to the JDBC path name in Class.forName
			e.printStackTrace();
		}
		finally
		{
			//finally block used to close resources
			try
			{
				if (resultSet != null)
					resultSet.close();
			}
			catch (SQLException sqlException)
			{
				sqlException.printStackTrace();
			}
			try
			{
				if(statement!=null)
					statement.close();
			}
			catch(SQLException sqlException)
			{
				sqlException.printStackTrace();
			}// nothing we can do
			try
			{
				if(conn!=null)
					conn.close();
			}
			catch(SQLException sqlException)
			{
				sqlException.printStackTrace();
			}
		}

		return "BeeromaticPage";
	}
}