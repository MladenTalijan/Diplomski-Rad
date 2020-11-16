<%-- 
    Document   : add-student
    Created on : Nov 16, 2020, 7:28:00 PM
    Author     : IMT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div><%@include file="index.html"%> </div>
        
        <div>
            <center>
                <h1>Dodaj diplomski rad</h1>
            <form action="">
                <table>
                    <tr><td>Naziv diplomskog rada</td><td><input type="text" name="name"></td></tr>
                    
                    <tr><td>Ime i prezime studenta</td><td><input type="text" name="name"></td></tr>
                    
                    <tr><td>Broj indeksa</td><td><input type="text" name="roll_number"></td></tr>
                    
                    <tr><td>Smer</td><td><select>
                            <option value="">--select--</option>
                            <option value="informacione_tehnologije">Informacione tehnologije</option>
                            <option value="menadzment">Menadzment u turizmu i ugostiteljstvu</option>
                            <option value="ekonomija">Primenjena ekonomija i preduzetnistvo</option>
                            <option value="gastronomija">Tehnologija hrane i gastronomija</option>
                            <option value="dizajn">Dizajn</option>
                            <option value="zastita">Zastita zivotne i radne sredine</option> 
                    </select></td></tr>
                    
                    <tr><td>Ime i prezime mentora</td><td><input type="text" name="name"></td></tr>
                    
                    <tr><td><input type="submit" value="Dodaj diplomski rad"><td><input type="button" value="Cancel"></td></td></tr>
                    
                </table>
                
            </form>  
            </center>
        </div>
        
        <div><%@include file="footer.html"%> </div>
    </body>
</html>
