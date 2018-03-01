<%-- 
    Document   : results
    Created on : Feb 25, 2018, 4:03:08 PM
    Author     : Greg's Surface
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="webapp.css">

        <title> Salary Calculations </title>
    </head>
    
    <%
        
        Double totalHoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
        Double hourlyRate = Double.parseDouble(request.getParameter("pay"));
        Double preTaxDeduct = Double.parseDouble(request.getParameter("pre"));
        Double postTaxDeduct = Double.parseDouble(request.getParameter("post"));
        Double otHours = 0.0;
        Double otRate = 0.0;
        Double grossPay = 0.0;
        Double taxRate = 0.0;
        Double preTaxPay = 0.0;
        Double taxAmount = 0.0;
        Double postTaxPay = 0.0;
        Double netPay = 0.0;
        
        DecimalFormat df = new DecimalFormat("0.00");
        
        if (totalHoursWorked>40) { 
            otHours = totalHoursWorked - 40;
            otRate = hourlyRate * 1.5;
            grossPay = (otHours*otRate)+(hourlyRate*40);   
       
        }
        
        else {
            grossPay = hourlyRate*totalHoursWorked;
        }
        
        if (grossPay <500) {
            taxRate = .18;
        }
        
        else {
            taxRate = .22;
        }
        
        preTaxPay = grossPay - preTaxDeduct;
        
        taxAmount = preTaxPay * taxRate;
        
        postTaxPay = preTaxPay - taxAmount;
        
        netPay = postTaxPay - postTaxDeduct;
    %>
    
    
    
    <body>
        <h1> Salary Results </h1>
        <form>
        <table class="results">
            <tbody>
                <tr>
                    <td> Total Hours Worked: </td>
                    <td><%= totalHoursWorked %></td>
                </tr>
                <tr>
                    <td>Hourly Rate: </td>
                    <td>$<%= df.format(hourlyRate) %> <output type= "text"></td>
                </tr>  
                <tr>
                    <td> # Hours Overtime: </td>
                    <td><%= otHours %></td>
                </tr>
                <tr>   
                    <td>Overtime Hourly Rate:</td>
                    <td>$<%= df.format(otRate) %></td>
                </tr>   
                <tr>
                    <td>Gross Pay:</td>
                    <td>$<%= df.format(grossPay) %></td>
                </tr>
                <tr>    
                    <td>PreTax Deduct:</td>
                    <td>$<%= df.format(preTaxDeduct) %></td>
                </tr>
                <tr>
                    <td>PreTax Pay:</td>
                    <td>$<%= df.format(preTaxPay)%></td>
                </tr>
                <tr>   
                    <td>Tax Amount:</td>
                    <td>$<%= df.format(taxAmount)%></td>
                </tr>  
                <tr>
                    <td>PostTax Pay:</td>
                    <td>$<%=df.format(postTaxPay)%></td>
                </tr>
                <tr>    
                    <td>PostTax Deduct:</td>
                    <td>$<%= df.format(postTaxDeduct) %></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td>$<%= df.format(netPay)%></td>

                </tr>
                
            </tbody>
            
        </table>
     
        </form>
    </body>
</html>
