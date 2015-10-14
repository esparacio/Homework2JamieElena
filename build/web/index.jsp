<%-- 
    Document   : index
    Created on : Oct 14, 2015, 2:14:58 PM
    Author     : Elena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Homework 2</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="main.css" type="text/css"/>
        
    </head>
    <body>
        
        <h1>Future Value Calculator</h1>
        <section>
        <form action="calculate" method="post">
             <input type="hidden" name="action" value="add">        
            <p><label>Investment Amount </label><input name="investAmount" type="text" value="${user.investAmount}" /></p>
            <p><label>Yearly Interest Rate </label><input name="yearlyRate" type="tex" value="${user.yearlyRate}" /></p>
            <p><label>Number of Years </label><input name="numYears" type="number" value="${user.numYears}" placeholder="Integer Number of Years" /></p>
            <p><input class= "butt" type="submit" value="Calculate"></p>
        </form>
        </section>
        <footer>
            <p>&copy; 2015, Elena Sparacio and Jamie Utt</p>
        </footer>