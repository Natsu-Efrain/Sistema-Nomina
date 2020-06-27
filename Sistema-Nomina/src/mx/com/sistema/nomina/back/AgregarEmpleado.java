package mx.com.sistema.nomina.back;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Se inicializa variables que se agregaran a la BD
		String num_telefono=request.getParameter("numTelefono");
		String calle=request.getParameter("calle");
		String num_exterior=request.getParameter("numeroExterior");
		String colonia=request.getParameter("colonia");
		String delegacion=request.getParameter("delegacion");
		String estado=request.getParameter("estado");
		String codigo_postal=request.getParameter("CP");
		String id_empleado=Login.idEmpleado;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
