package com.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.catalina.connector.Request;

import dbconnectivity.Dbconnectivity;

public class Models {
	
	public int insert(int cid,String item_name,String description,int price) throws ClassNotFoundException, SQLException
	{
		Connection con = null;
		Dbconnectivity db = new Dbconnectivity();
	    con =  db.getConnectivity();
	    PreparedStatement ps = con.prepareStatement("insert into menu values(?,?,?,?)");
		ps.setInt(1, cid);	
		ps.setString(2, item_name);
		ps.setString(3, description);
		ps.setInt(4, price);
		int i = ps.executeUpdate();
		return i;
	}
	
	public ResultSet editMenu() throws ClassNotFoundException, SQLException
	{
		ResultSet rs = null;
		Connection con = null;
		Dbconnectivity db = new Dbconnectivity();
	    con =  db.getConnectivity();
	    PreparedStatement ps = con.prepareStatement("select * from  menu");
		rs = ps.executeQuery();
		return  rs;
	}
	public ResultSet updateMenu( String item_name,String description,int price, int cid) throws ClassNotFoundException, SQLException
	{
		ResultSet rs = null;
		Connection con = null;
		Dbconnectivity db = new Dbconnectivity();
	    con =  db.getConnectivity();
	    PreparedStatement ps = con.prepareStatement("UPDATE menu SET item_name =?, Description=?, price = ?  WHERE cid = ?");
		ps.setString(1, item_name);
		ps.setString(2, description);
		ps.setInt(2, price);
		
		
	    int i = ps.executeUpdate();
		return  rs;
	}

	
	public ResultSet itemFetch() throws ClassNotFoundException, SQLException
	{
		ResultSet rs = null;
		Connection con = null;
		Dbconnectivity db = new Dbconnectivity();
	    con =  db.getConnectivity();
	    PreparedStatement ps = con.prepareStatement("select * from menu");
		rs = ps.executeQuery();
		return rs;
	}
}
