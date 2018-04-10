package com.src.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.model.AdsbData;
import com.google.gson.*;
/**
 * Servlet implementation class AdsbServ
 */
@WebServlet("/AdsbServ")
public class AdsbServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdsbServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
			try {
		
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//	String str=request.getParameter("flightname");
		Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:4000/flight","root","root123");
		Statement s = con.createStatement(); //Statement is used to write queries. Read more about it.
		
		ResultSet rst = s.executeQuery("SELECT a.* FROM adsb a JOIN (SELECT  b.flight, MAX(b.date_column) AS date_column FROM adsb b GROUP BY b.flight) b ON a.flight = b.flight AND a.date_column = b.date_column ORDER BY a.flight");
		Gson ge=new Gson();
		
		ArrayList<AdsbData> flights=new ArrayList<>();
		while(rst.next()){
			AdsbData cs=new AdsbData();
			String hex=rst.getString("hex");
			String name=rst.getString("flight");
			double lat=rst.getDouble("lat");
			double lng=rst.getDouble("lon");
			int speed=rst.getInt("speed");
			long track=rst.getLong("track");
			int alt=rst.getInt("altitude");
			cs.setAlt(alt);
			cs.setHex(hex);
			cs.setName(name);
			cs.setLat(lat);
			cs.setLng(lng);
			cs.setSpeed(speed);
			cs.setTrack(track);
			flights.add(cs);
			
		}
		System.out.println(ge.toJson(flights));
	   response.getWriter().write(ge.toJson(flights));
		
		// request.setAttribute("peopleList", flights);
	    //RequestDispatcher rd=request.getRequestDispatcher("index3.jsp");
	    //rd.forward(request, response);
	    
	
		}
		catch(SQLException se){
			
			se.printStackTrace();
		}


}
}
