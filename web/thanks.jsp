<%-- 
  Document   : thanks
  Created on : Oct 14, 2015, 2:14:58 PM
  Author     : (c) Elena Sparacio and Jamie Utt
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:import url="/includes/header.html"/>
  <body>
    <h1>Future Value Calculator</h1>
   <jsp:useBean id="user" scope="request" class="edu.business.User"/>
    <table>
        <tr>
            <td><label class="box">Investment Amount:</label> </td>
            <td class="gouda"> <span class="value"><jsp:getProperty name="user" property="IACurrency"/></span><br></td>
    </tr>
    <tr>
        <td><label class="box">Yearly Interest Rate:</label></td>
        <td class="gouda"><span class="value"><jsp:getProperty name="user" property="yearlyRate"/></span><br></td>
    </tr>
    <tr>
        <td><label class="box">Number of Years:</label></td>
        <td class="gouda"><span class="value"><jsp:getProperty name="user" property="numYears"/></span><br></td>
    </tr>
    <tr>
        <td><label class="box">Future Value:</label></td>
        <td class="gouda"><span class="value"><jsp:getProperty name="user" property="FVCurrency"/></span></td>
    </tr>
    </table>
     <c:import url="/includes/footer.html"/>
  </body>
</html>
