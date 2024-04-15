/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package blood_donation_system;

/**
 *
 * @author nirut
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnector {

    private static final String DB_URL = "jdbc:mysql://localhost/blooddonation";
    private static final String USER = "root";
    private static final String PASSWORD = "root";

    private Connection connection;

    public DatabaseConnector() {
        try {
            // Register the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            // Open a connection
            connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            System.out.println("Connected to database successfully!");
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Failed to connect to database!");
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Connection closed successfully!");
            } catch (SQLException e) {
                System.err.println("Failed to close connection!");
            }
        }
    }
}
