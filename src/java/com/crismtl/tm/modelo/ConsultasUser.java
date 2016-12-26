/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crismtl.tm.modelo;

import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author crismtl
 */
public class ConsultasUser extends Conexion {

    public int registro(String username, String password) {
        int filas = 0;
        Statement st = null;
        try {
            st = connection.createStatement();
            String consultaSQL = "insert into User(username, password) values " + "('" + username + "', '" + password + "')";
            filas = st.executeUpdate(consultaSQL);
        } catch (SQLException e) {
            System.err.println("Error en la carga del driver: " + e.getMessage());
        } finally {
            if (st != null) {
                try {
                    st.close();
                } catch (SQLException ex) {
                    System.err.println("Error cerrando la sentencia: " + ex.getMessage());
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ex) {
                    System.err.println("Error cerrando la conexión: " + ex.getMessage());
                }
            }
        }
        return filas;
    }
}