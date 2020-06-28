package mx.com.sistema.nomina.back;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.com.sistema.nomina.DB.ProcesosDB;

/**
 * Servlet implementation class EditarEmpresariales
 */
@WebServlet("/EditarEmpresariales")
public class EditarEmpresariales extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditarEmpresariales() {
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
		// Se inician las variables
		String clase = request.getParameter("clase");
		String tipo_pago = request.getParameter("tipo_pago");
		String puesto = request.getParameter("puesto");
		String id_empleado=BuscarEmpleado.idEmpleado;
		// Aqui se manda a llamar el metodo para agregar una area
		ProcesosDB pdb = new ProcesosDB();
		pdb.modificacionDetallesEmpresariales(id_empleado, clase, tipo_pago, puesto);
		// De esta forma regresamos al jsp original y si ocurre un error mostrarlo
		RequestDispatcher rd;
		String cadena = ProcesosDB.MensajeError;
		request.setAttribute("error", cadena);
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
