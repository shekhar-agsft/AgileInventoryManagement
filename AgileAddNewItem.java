package com.agile.bl.controllers;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agile.bl.dao.AgileDAO;
import com.agile.bl.model.AgileItems;

/**
 * Servlet implementation class AgileAddNewItem
 * @author Vishal Arora
 * adds a new item
 * 
 */
@WebServlet("/newitem")
public class AgileAddNewItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	AgileDAO agileDao = new AgileDAO();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String itemName = request.getParameter("");
			int quantity = Integer.valueOf(request.getParameter(""));
			Timestamp currentTS = new Timestamp(System.currentTimeMillis());
			String description = request.getParameter("");
			
			AgileItems agileItems = new AgileItems();
			agileItems.setItemName(itemName);
			agileItems.setQuantity(quantity);
			agileItems.setLastModifiedDate(currentTS);
			agileItems.setDescription(description);
			
			agileDao.addDetails(agileItems);
			
		}catch(Exception e){
			
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
