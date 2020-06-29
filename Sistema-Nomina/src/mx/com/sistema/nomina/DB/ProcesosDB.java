package mx.com.sistema.nomina.DB;


	import java.awt.Cursor;
import java.sql.Connection;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;

	import mx.com.sistema.nomina.Bin.*;;
	
	public class ProcesosDB extends ConexionDB {
		
		 public static String MensajeError;
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
						String colonia, String delegacion, String estado, String codigo_postal,String clase,String Tipo_Pago,String Fecha_Ingreso,String Correo,String contrasena,String Id_puesto,String creditoInf,String metodO,String parametroInf) {
					connectDatabase();

					try {

						Statement stm = connection.createStatement();
						

						stm.execute("INSERT INTO Usuario VALUES (Default,'"+nombre+"','"+apellidoP+"','"+apellidoM+"',"+num_telefono+",'"+calle+"','"+num_exterior+"','"+colonia+"','"+delegacion+"','"+estado+"',"+codigo_postal+",'"+clase+"','"+Tipo_Pago+"', '"+Fecha_Ingreso+"', 'No', '"+Correo+"', '"+contrasena+"',"+Id_puesto+",'Si');");
                        String valor="SELECT Id_Empleado FROM Usuario WHERE nombre='"+nombre+"' and apellido_p='"+apellidoP+"' and apellido_m='"+apellidoM+"'";
						stm.execute("SELECT crearDataUsuario (("+valor+"),'"+creditoInf+"','"+metodO+"',"+parametroInf+");");
						System.out.println("Se registro correctamente");
					} catch (Exception e) {
						MensajeError="ERROR: El numero de telefono ya esta registrado en la Base de datos, ingrese otro numero!! y/o  Error: El correo proporcionado ya se encuentra registrado en la BD";
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
				
				//Se guardan los datos de puestos para la vista de agregar areas
				public List<Datos_Agregar> consultaAreas() {
					connectDatabase();
					List<Datos_Agregar> listadoAreas = new ArrayList<Datos_Agregar>();
					try {

						Statement stm = connection.createStatement();
						ResultSet rs = stm.executeQuery(
								"select id_area,nombre_area from Area;");

						while (rs.next()) {
							Datos_Agregar DA = new Datos_Agregar();
							DA.setNombre_area(rs.getString("nombre_area"));
							DA.setId_area(rs.getString("id_area"));
							listadoAreas.add(DA);
						}
					} catch (Exception e) {
						e.printStackTrace();	

					}
					desconectar();
					return listadoAreas;
				}
				
				
				//Metodo para poder recuperar la informacion del jsp Recuperar Id_puesto
				public List<Datos_Agregar> consultaId_Area(String nombre_area) {
					connectDatabase();
					List<Datos_Agregar> listadoInformacionArea = new ArrayList<Datos_Agregar>();
					try {

						Statement stm = connection.createStatement();
						ResultSet rs = stm.executeQuery(
								"select * from Area where nombre_area='"
										+ nombre_area + "';");

						while (rs.next()) {
							Datos_Agregar usr = new Datos_Agregar();
							usr.setId_area((rs.getString("id_area")));
							listadoInformacionArea.add(usr);
						}
					} catch (Exception e) {
						e.printStackTrace();

					}
					desconectar();
					return listadoInformacionArea;
				}
				
				
				// Metodo para agregar puesto
				public void insercionInformacionPuesto(String Id_area,String nombre_puesto,String salario,String Horas) {
					connectDatabase();

					try {

						Statement stm = connection.createStatement();
						
                      
						stm.execute("INSERT INTO Puesto VALUES (Default,"+Id_area+",'"+nombre_puesto+"',"+salario+","+Horas+");");
                     
						System.out.println("Se registro correctamente");
					} catch (Exception e) {
					    MensajeError="ERROR: El nombre del puesto ya se ha registrado en la Base de datos, ingrese otro nombre!!";
						System.out.println(e);
					}
					desconectar();
				}	
				
				// Metodo para agregar area
				public void insercionInformacionArea(String nombre_area,String vales_despensa) {
					connectDatabase();

					try {

						Statement stm = connection.createStatement();
						
                      
						stm.execute("INSERT INTO Area VALUES (Default,'"+nombre_area+"',"+vales_despensa+");");
                     
						System.out.println("Se registro correctamente");
					} catch (Exception e) {
					    MensajeError="ERROR: El nombre del area ya se ha registrado en la Base de datos, ingrese otro nombre!!";
						System.out.println(e);
					}
					desconectar();
				}	
				
				//Metodo para consultar la informacion empresarial del usuario
				public List<Usuario> consultaDatosEmpresariales(String id_empleado) {
					connectDatabase();
					List<Usuario> listadoDatosEmpresariales = new ArrayList<Usuario>();
					try {

						Statement stm = connection.createStatement();
						ResultSet rs = stm.executeQuery(
								"select * from Usuario INNER JOIN Puesto ON Usuario.ID_puesto = Puesto.ID_puesto INNER JOIN Area ON Puesto.Id_Area = Area.Id_Area where Id_empleado="
										+ id_empleado + ";");

						while (rs.next()) {
							Usuario usr = new Usuario();
							usr.setClase(rs.getString("clase"));
							usr.setTipo_pago(rs.getString("tipo_pago"));
							usr.setPuesto(rs.getString("nombre_puesto"));
							usr.setArea(rs.getString("nombre_area"));

							listadoDatosEmpresariales.add(usr);
						}
					} catch (Exception e) {
						e.printStackTrace();

					}
					desconectar();
					return listadoDatosEmpresariales;
				}
				
				//Se modifican datalles Empresariales
				public void modificacionDetallesEmpresariales(String id_empleado,String clase,String tipo_pago,String puesto) {
					connectDatabase();

					try {

						Statement stm = connection.createStatement();
						
                        String Id_puesto="Select Id_puesto from Puesto where nombre_puesto='"+puesto+"'";
						stm.execute("update usuario set clase='"+clase+"',tipo_pago='"+tipo_pago+"', id_puesto=("+Id_puesto+") where id_empleado=" + id_empleado + ";");
						System.out.println("Se actualizo correctamente");
					} catch (Exception e) {
					    MensajeError="ERROR: El nombre del area ya se ha registrado en la Base de datos, ingrese otro nombre!!";
						System.out.println(e);
					}
					desconectar();
				}	
				
				//Se modifican datalles Empresariales
				public void generar(String id_empleado,String faltas,String retardos,String horas) {
					connectDatabase();

					try {

						Statement stm = connection.createStatement();
						
                        String Id_puesto="Select Id_puesto from Puesto where nombre_puesto='"+puesto+"'";
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
						stm.execute("SELECT totalDeducciones("+
								"(SELECT ISR FROM Deducciones WHERE Id_Deduccion = '')," + 
								"(SELECT Infanavit FROM Deducciones WHERE Id_Deduccion = '')," + 
								"(SELECT IMSS FROM Deducciones WHERE Id_Deduccion = ''), "+ 
								"(SELECT Total_FR FROM Deducciones WHERE Id_Deduccion = '')," + 
								"(SELECT Pago_Pre FROM Deducciones WHERE Id_Deduccion = '')," + 
								"(SELECT Fondo_A FROM Deducciones WHERE Id_Deduccion = '')," + 
								"(SELECT Id_Deduccion FROM Deducciones WHERE Id_Deduccion = ''));");
						System.out.println("Se actualizo correctamente");
					} catch (Exception e) {
					    MensajeError="ERROR: El nombre del area ya se ha registrado en la Base de datos, ingrese otro nombre!!";
						System.out.println(e);
					}
					desconectar();
				}	
				
				

}
