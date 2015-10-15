<%-- 
  Document   : thanks
  Created on : Oct 14, 2015, 2:14:58 PM
  Author     : (c) Elena Sparacio and Jamie Utt
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
  </head>
  <body>
    <h1>Future Value Calculator</h1>
    <label class="box">Investment Amount:</label>
    <span class="value">${user.investAmount}</span><br>
    <label class="box">Yearly Interest Rate:</label>
    <span class="value">${user.yearlyRate}</span><br>
    <label class="box">Number of Years:</label>
    <span class="value">${user.numYears}</span><br>
    <label class="box">Future Value:</label>
    <footer>
      <p>&copy; 2015, Elena Sparacio and Jamie Utt</p>
    </footer>
  </body>
</html>
