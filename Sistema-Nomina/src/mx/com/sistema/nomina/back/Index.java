package mx.com.sistema.nomina.back;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.com.sistema.nomina.Bin.Usuario;
import mx.com.sistema.nomina.DB.ProcesosDB;
import mx.com.sistema.nomina.back.*;
/**
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Index() {
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
		//Se inicializa variables
		ProcesosDB pdb=new ProcesosDB();
		RequestDispatcher rd;
		List<Usuario> listaUsuario;
		//Obtencion de los datos del usuario en la BD
		listaUsuario=pdb.consultaUsuario(Login.correo,Login.contrasena);
		String area="";
		for (Usuario usr : listaUsuario) {
			area=usr.getArea();
			request.setAttribute("IdEmpleado", usr.getId_empleado());
			request.setAttribute("nombre", usr.getNombre());
			request.setAttribute("apellidoP", usr.getApellidop());
			request.setAttribute("apellidoM", usr.getApellidom());
			request.setAttribute("numTelefono", usr.getNum_telefono());
			request.setAttribute("calle", usr.getCalle());
			request.setAttribute("numeroExterior", usr.getNum_exterior());
			request.setAttribute("colonia", usr.getColonia());
			request.setAttribute("delegacion", usr.getDelegacion());
			request.setAttribute("estado", usr.getEstado());
			request.setAttribute("CP", usr.getCp());
			request.setAttribute("claseE", usr.getClase());
			request.setAttribute("tipoPago", usr.getTipo_pago());
			request.setAttribute("fechaIngreso", usr.getFecha_ingreso());
			request.setAttribute("puesto", usr.getPuesto());
			request.setAttribute("area", usr.getArea());
		}
		if(area.equals("Recursos Humanos"))
		{
		rd = request.getRequestDispatcher("/datosPersonales.jsp");
		rd.forward(request, response);
		}
		else
		{
	    rd = request.getRequestDispatcher("/datosPersonalesEmpleado.jsp");
		rd.forward(request, response);
		}
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
