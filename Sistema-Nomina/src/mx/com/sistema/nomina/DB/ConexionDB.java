package mx.com.sistema.nomina.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConexionDB {
	Connection connection;

	protected void connectDatabase() {

		try {
			try {
				Class.forName("org.postgresql.Driver");
			} catch (ClassNotFoundException ex) {
				System.out.println("Error al registrar el driver de PostgreSQL: " + ex);
			}
			connection = null;
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/nomina", "postgres", "postgresNomina18");

			boolean valid = connection.isValid(50000);
			System.out.println(valid ? "TEST OK" : "TEST FAIL");

		} catch (java.sql.SQLException sqle) {
			System.out.println("Error: " + sqle);
		}
	}

	protected void desconectar() {
		try {
			connection.close();
		} catch (java.sql.SQLException sqle) {
			System.out.println("Error: " + sqle);
		}
	}
}
