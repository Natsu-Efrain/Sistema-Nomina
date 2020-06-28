package mx.com.sistema.nomina.DB;


	import java.awt.Cursor;
import java.sql.Connection;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;

	import mx.com.sistema.nomina.Bin.*;;

	public class ProcesosDB extends ConexionDB {
	//Metodo para el ingreso al sistema y a que pagina redirigir
		public List<Usuario> consultaUsuario(String email,String password) {
			connectDatabase();
			List<Usuario> listado = new ArrayList<Usuario>();
			try {

				Statement stm = connection.createStatement();
				ResultSet rs = stm.executeQuery(
						"select * from Usuario INNER JOIN Puesto ON Usuario.ID_puesto = Puesto.ID_puesto INNER JOIN Area ON Puesto.Id_Area = Area.Id_Area where correo='"
								+ email + "' and contrasena='"+password+"';");

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
					usr.setArea(rs.getString("nombre_area"));

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

		// Realiza la actualizacion de los datos en la tabla usuario
		public void actualizaInformaciondatosPersonales(String num_telefono, String calle, String num_exterior,
				String colonia, String delegacion, String estado, String codigo_postal, String id_empleado) {
			connectDatabase();

			try {

				Statement stm = connection.createStatement();

				stm.execute("update usuario set num_telefono=" + num_telefono + ",calle='" + calle + "',num_exterior="
						+ num_exterior + ",colonia='" + colonia + "',estado='" + estado + "',codigo_postal=" + codigo_postal
						+ ",delegacion='"+delegacion+"'"+" where id_empleado=" + id_empleado + ";");
				System.out.println("Se actualizo correctamente");
			} catch (Exception e) {
				System.out.println(e);
			}
			desconectar();
		}
		
		//Metodo para poder recuperar la informacion del jsp Recuperar Contraseña
		public List<Usuario> consultaUsuarioPassword(String email) {
			connectDatabase();
			List<Usuario> listadoInformacion = new ArrayList<Usuario>();
			try {

				Statement stm = connection.createStatement();
				ResultSet rs = stm.executeQuery(
						"select correo,contrasena from Usuario where correo='"
								+ email + "';");

				while (rs.next()) {
					Usuario usr = new Usuario();
					usr.setEmail(rs.getString("correo"));
					usr.setPassword(rs.getString("contrasena"));
					listadoInformacion.add(usr);
				}
			} catch (Exception e) {
				e.printStackTrace();

			}
			desconectar();
			return listadoInformacion;
		}
		//Se guardan los datos de puestos para la vista de agregar usuario
		public List<Datos_Agregar> consultaPuestos() {
			connectDatabase();
			List<Datos_Agregar> listadoPuestos = new ArrayList<Datos_Agregar>();
			try {

				Statement stm = connection.createStatement();
				ResultSet rs = stm.executeQuery(
						"select id_puesto,nombre_puesto from Puesto;");

				while (rs.next()) {
					Datos_Agregar DA = new Datos_Agregar();
					DA.setId_puesto(rs.getString("id_puesto"));
					DA.setNombre_puesto(rs.getString("nombre_puesto"));
					listadoPuestos.add(DA);
				}
			} catch (Exception e) {
				e.printStackTrace();	

			}
			desconectar();
			return listadoPuestos;
		}
		
		// Metodo para ingresar usuarios
				public void insercionInformacionEmpleado(String nombre,String apellidoP,String apellidoM,String num_telefono, String calle, String num_exterior,
						String colonia, String delegacion, String estado, String codigo_postal,String clase,String Tipo_Pago,String Fecha_Ingreso,String Correo,String contrasena,String Id_puesto) {
					connectDatabase();

					try {

						Statement stm = connection.createStatement();
						

						stm.execute("INSERT INTO Usuario VALUES (Default,'"+nombre+"','"+apellidoP+"','"+apellidoM+"',"+num_telefono+",'"+calle+"','"+num_exterior+"','"+colonia+"','"+delegacion+"','"+estado+"',"+codigo_postal+",'"+clase+"','"+Tipo_Pago+"', '"+Fecha_Ingreso+"', 'No', '"+Correo+"', '"+contrasena+"',"+Id_puesto+",'Si');");
						
						System.out.println("Se registro correctamente");
					} catch (Exception e) {
						System.out.println(e);
					}
					desconectar();
				}	
				
		  
				
				//Metodo para poder recuperar la informacion del jsp Recuperar Id_puesto
				public List<Datos_Agregar> consultaId_Puesto(String nombre_puesto) {
					connectDatabase();
					List<Datos_Agregar> listadoInformacionPuesto = new ArrayList<Datos_Agregar>();
					try {

						Statement stm = connection.createStatement();
						ResultSet rs = stm.executeQuery(
								"select * from Puesto where nombre_puesto='"
										+ nombre_puesto + "';");

						while (rs.next()) {
							Datos_Agregar usr = new Datos_Agregar();
							usr.setId_puesto((rs.getString("id_puesto")));
							listadoInformacionPuesto.add(usr);
						}
					} catch (Exception e) {
						e.printStackTrace();

					}
					desconectar();
					return listadoInformacionPuesto;
				}

}
