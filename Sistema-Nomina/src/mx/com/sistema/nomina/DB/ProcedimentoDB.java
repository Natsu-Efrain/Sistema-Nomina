package mx.com.sistema.nomina.DB;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import mx.com.sistema.nomina.Bin.*;;

public class ProcedimentoDB extends ConexionDB {

	public List<Usuario> consultaUsuario(String email) {
		connectDatabase();
		List<Usuario> listado = new ArrayList<Usuario>();
		try {

			Statement stm = connection.createStatement();
			ResultSet rs = stm.executeQuery(
					"select * from Usuario INNER JOIN Puesto ON Usuario.ID_puesto = Puesto.ID_puesto where correo='"
							+ email + "';");

			while (rs.next()) {
				Usuario usr = new Usuario();
				usr.setEmail(rs.getString("correo"));
				usr.setPassword(rs.getString("contrasena"));
				usr.setId_puesto(rs.getString("id_puesto"));
				usr.setId_empleado(rs.getString("id_empleado"));
				usr.setNombre(rs.getString("nombre"));
				usr.setApellidop(rs.getString("apellido_p"));
				usr.setApellidom(rs.getString("apellido_m"));
				usr.setNum_telefono(rs.getString("num_telefono"));
				usr.setCalle(rs.getString("calle"));
				usr.setNum_exterior(rs.getString("num_exterior"));
				usr.setColonia(rs.getString("colonia"));
				usr.setDelegacion(rs.getString("delegacion"));
				usr.setEstado(rs.getString("estado"));
				usr.setCp(rs.getString("codigo_postal"));
				usr.setClase(rs.getString("clase"));
				usr.setTipo_pago(rs.getString("tipo_pago"));
				usr.setFecha_ingreso(rs.getString("fecha_ingreso"));
				usr.setPuesto(rs.getString("nombre_puesto"));
				usr.setArea(rs.getString("area"));
			

				listado.add(usr);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		desconectar();
		return listado;
	}

	public void insertaDiscos(String Autor, String Nombre) {
		connectDatabase();

		try {

			Statement stm = connection.createStatement();

			stm.executeQuery("insert into Cancion values ('" + Nombre + "','" + Autor + "');");

		} catch (Exception e) {

		}
		desconectar();

	}
}
