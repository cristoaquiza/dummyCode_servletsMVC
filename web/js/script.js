/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function confirmPass() {
    var pass = document.getElementById("pass").value;
    var confirmpass = document.getElementById("confirmpass").value;
    if (pass !== confirmpass ){
        document.getElementById("error").innerHTML = "Las contraseñas no son iguales";
        return false;
    } else {
        return true;
    }
}