<%-- 
    Document   : index
    Created on : Feb 25, 2018, 3:46:13 PM
    Author     : Greg's Surface
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Salary Calculation </title>
        <link rel="stylesheet" type="text/css" href="webapp.css">
    </head>
    
    
    
    
    
    <body>
        <h1> Weekly Net Pay </h1>
        <form name="salary" action="results.jsp" method="post">
            <table class="info">
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursWorked" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="pay" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Pre-Tax Deduct:</td>
                        <td><input type="text" name="pre" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="post" value="" size="50"></td>
                    </tr>
                    
                </tbody>
                
            </table>
            
            <input type="submit" value="calculate" id="submit">
            <input type="reset" value="clear" id="clear">
            
            
        </form>
      
       </div>
    </body>
</html>
