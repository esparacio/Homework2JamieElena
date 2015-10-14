/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.elon;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.business.User;
import edu.data.UserDB;

/**
 *
 * @author Elena
 */
public class Calculate extends HttpServlet {
 @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/index.html";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.jsp";    // the "join" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            String investAmount = request.getParameter("investAmount");
            String yearlyRate = request.getParameter("yearlyRate");
            String numYears = request.getParameter("numYears");
            int future = 2; 
            int futureValue = future;
            
            System.out.println("hi");

            // store data in User object
            User user = new User(investAmount, yearlyRate, numYears, futureValue);

            // validate the parameters
            String message;
            if (investAmount == null || yearlyRate == null || numYears == null ||
                investAmount.isEmpty() || yearlyRate.isEmpty() || numYears.isEmpty()) {
                message = "Please fill out all three text boxes.";
                url = "/index.jsp";
            } 
            else {
                message = "";
                url = "/thanks.jsp";
                UserDB.insert(user);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }    
}