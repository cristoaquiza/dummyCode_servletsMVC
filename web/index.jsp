<%-- 
    Document   : Index
    Created on : 26/12/2016, 10:36:20
    Author     : crismtl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro MVC</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <div>
            <form action="SignUp" method="post" onsubmit="return confirmPass()">
                <fieldset>
                    <legend>Registro</legend>
                    <p><label for="user">Username </label><input type="text" name="user" id="user" required="true"/></p>
                    <p><label for="pass">Password <label><input type="password" name="pass" id="pass" required="true"/></p>
                    <p><label for="confirmpass">Confirm Password <label><input type="password" name="confirmpass" id="confirmpass" required="true"/></p>
                    <p><input type="submit" name="Entrar" id="Entrar" value="Registrar"/></p>
                </fieldset>
            </form>
        </div>
        <p id="error"></p>
        <script src="js/script.js"></script>
    </body>
</html>
