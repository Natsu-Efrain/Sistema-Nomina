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

/**
 * Servlet implementation class BuscarEmpleado
 */
@WebServlet("/BuscarEmpleado")
public class BuscarEmpleado extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarEmpleado() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    static String idEmpleado;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
				//Se inicializa variables
		        String id_empleado=request.getParameter("id_empleado");
		        idEmpleado=id_empleado;
				ProcesosDB pdb=new ProcesosDB();
				RequestDispatcher rd;
				List<Usuario> listadoDatosEmpresariales;
				//Obtencion de los datos del usuario en la BD
				listadoDatosEmpresariales=pdb.consultaDatosEmpresariales(id_empleado);
				for (Usuario usr : listadoDatosEmpresariales) {
					request.setAttribute("claseE", usr.getClase());
					request.setAttribute("tipoPago", usr.getTipo_pago());
					request.setAttribute("puesto", usr.getPuesto());
					request.setAttribute("area", usr.getArea());
				}
				rd = request.getRequestDispatcher("/edicionSistema");
				rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
