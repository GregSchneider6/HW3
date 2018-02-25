<%-- 
    Document   : results
    Created on : Feb 25, 2018, 4:03:08 PM
    Author     : Greg's Surface
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Salary Calculations </title>
    </head>
    
    <%
       
        String TotalHoursWorked = request.getParameter("hoursWorked");
        String HourlyRate = request.getParameter("pay");
        String PreTaxDeduct = request.getParameter("pre");
        String PostTaxDeduct = request.getParameter("post");

        %>
    
    
    
    <body>
        <h1> Salary Results </h1>
        
        <table>
            <tbody>
                <tr>
                    <td> Total Hours Worked: </td>
                    <td><%= TotalHoursWorked %></td>
                    
                    <td>Hourly Rate: </td>
                    <td><%= HourlyRate %></td>
                    
                    <td> # Hours Overtime: </td>
                    <td></td>
                    
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                    
                    <td>Gross Pay:</td>
                    <td></td>
                    
                    <td>PreTax Deduct:</td>
                    <td><%= PreTaxDeduct %></td>
                    
                    <td>PreTax Pay:</td>
                    <td></td>
                    
                    <td>Tax Amount:</td>
                    <td></td>
                    
                    <td>PostTax Pay:</td>
                    <td></td>
                    
                    <td>PostTax Deduct:</td>
                    <td><%= PostTaxDeduct %></td>
                    
                    <td>Net Pay:</td>
                    <td></td>

                </tr>
                
            </tbody>
            
        </table>
    </body>
</html>
