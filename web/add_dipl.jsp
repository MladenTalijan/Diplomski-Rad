<%-- 
    Document   : add-student
    Created on : Nov 16, 2020, 7:28:00 PM
    Author     : IMT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <style type="text/css">
        .container{
            
        }
    </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script type="text/javascript">
            function doValidate(){
                var name = document.forms["dipl_form"]["name"].value;
                var nameLastname = document.forms["dipl_form"]["nameLastname"].value;
                var brojIndeksa = document.forms["dipl_form"]["brojIndeksa"].value;
                var smer = document.forms["dipl_form"]["smer"].value;
                var nameLastnameM = document.forms["dipl_form"]["nameLastnameM"].value;
                
                var nameStatus;
                var nameLastnameStatus;
                var brojIndeksaStatus;
                var smerStatus;
                var nameLastnameMStatus;
                
                var nameMsg;
                var nameLastNameMsg;
                var brojIndeksaMsg;
                var smerMsg;
                var nameLastnameMMsg;
                
                    if(name === ""){
                        nameStatus = false;
                        nameMsg = "*Naziv diplomskog rada mora biti popunjen!";
                        document.getElementById("nameMsg").innerHTML = nameMsg;
                    }if(nameLastname === ""){
                        nameLastnameStatus = false;
                        nameLastnameMsg = "*Ime i prezime moraju biti popunjeni!";
                        document.getElementById("nameLastnameMsg").innerHTML = nameLastnameMsg;
                    }if(brojIndeksa === ""){
                        brojIndeksaStatus = false;
                        brojIndeksaMsg = "*Broj indeksa mora biti popunjen!!";
                        document.getElementById("brojIndeksaMsg").innerHTML = brojIndeksaMsg;
                    }if(smer === ""){
                        smerStatus = false;
                        smerMsg = "*Morate izabrati smer!";
                        document.getElementById("smerMsg").innerHTML = smerMsg;
                    }if(nameLastnameM === ""){
                        nameLastnameMStatus = false;
                        nameLastnameMMsg = "*Ime mentora mora biti popunjeno!";
                        document.getElementById("nameLastnameMMsg").innerHTML = nameLastnameMMsg;
                    }
                    
                if(nameStatus === false || nameLastnameStatus === false || brojIndeksaStatus === false || smerStatus === false || nameLastnameM === false){
                    return false;
                }
                }
        </script>
        
        <div><%@include file="index.html"%> </div>
        
        <div class="container">
            <center>
                <h1>Dodaj diplomski rad</h1>
                <form action="./AddDiplController" name ="dipl_form" method="post" onsubmit="return doValidate()">
                <table>
                    <tr><td>Naziv diplomskog rada</td><td><input type="text" name="name"><span id = "nameMsg"></span></td></tr>
                    
                    <tr><td>Ime i prezime studenta</td><td><input type="text" name="nameLastname"><span id = "nameLastnameMsg"></span></td></tr>
                    
                    <tr><td>Broj indeksa</td><td><input type="text" name="brojIndeksa"><span id = "brojIndeksaMsg"></span></td></tr>
                    
                    <tr><td>Smer</td><td><select name = "smer">
                            <option value="">--select--</option>
                            <option value="informacione_tehnologije">Informacione tehnologije</option>
                            <option value="menadzment">Menadzment u turizmu i ugostiteljstvu</option>
                            <option value="ekonomija">Primenjena ekonomija i preduzetnistvo</option>
                            <option value="gastronomija">Tehnologija hrane i gastronomija</option>
                            <option value="dizajn">Dizajn</option>
                            <option value="zastita">Zastita zivotne i radne sredine</option> 
                            </select><span id = "smerMsg"></span></td></tr>
                    
                    <tr><td>Ime i prezime mentora</td><td><input type="text" name="nameLastnameM"><span id = "nameLastnameMMsg"></span></td></tr>
                    
                    <tr><td><input type="submit" value="Dodaj diplomski rad"><td><input type="button" value="Cancel"></td></td></tr>
                    
                </table>
                
            </form>  
            </center>
        </div>
        
        <div><%@include file="footer.html"%> </div>
    </body>
</html>
