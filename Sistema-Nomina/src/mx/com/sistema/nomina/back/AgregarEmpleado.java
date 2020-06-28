package mx.com.sistema.nomina.back;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import mx.com.sistema.nomina.Bin.Datos_Agregar;

import mx.com.sistema.nomina.DB.ProcesosDB;

/**
 * Servlet implementation class AgregarEmpleado
 */
@WebServlet("/AgregarEmpleado")
public class AgregarEmpleado extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AgregarEmpleado() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Se inicializa variables que se agregaran a la BD
		String nombre = request.getParameter("Nombre");
		String apellidoP = request.getParameter("ApellidoP");
		String apellidoM = request.getParameter("ApellidoM");
		String num_telefono = request.getParameter("numeroTelefono");
		String calle = request.getParameter("calle");
		String num_exterior = request.getParameter("numeroExterior");
		String colonia = request.getParameter("colonia");
		String delegacion = request.getParameter("delegacion");
		String estado = request.getParameter("estado");
		String codigo_postal = request.getParameter("CP");
		String clase = request.getParameter("clase");
		String Tipo_Pago = request.getParameter("tipo_pago");
		String Fecha_Ingreso = request.getParameter("fechaIngreso");
		System.out.print(Fecha_Ingreso);
		String Correo = request.getParameter("correo");
		String contrasena = request.getParameter("contrasena");
		String nombre_puesto = request.getParameter("puesto");
		String Id_puesto="";
	
		
        ProcesosDB pdb=new ProcesosDB();
		
        List<Datos_Agregar> listaId_puesto;
		
        listaId_puesto=pdb.consultaId_Puesto(nombre_puesto);
	
        for (Datos_Agregar da : listaId_puesto) {
	         Id_puesto=da.getId_puesto();
		}
		
	    pdb.insercionInformacionEmpleado(nombre, apellidoP, apellidoM, num_telefono, calle, num_exterior, colonia, delegacion, estado, codigo_postal, clase, Tipo_Pago, Fecha_Ingreso, Correo, contrasena, Id_puesto);
	    RequestDispatcher rd;
	    rd = request.getRequestDispatcher("/edicionSistema");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
