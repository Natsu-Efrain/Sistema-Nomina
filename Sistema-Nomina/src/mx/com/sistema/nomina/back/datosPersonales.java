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
 * Servlet implementation class datosPersonales
 */
@WebServlet("/datosPersonales")
public class datosPersonales extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public datosPersonales() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Se agregan las variables de los datos a modificar
		String num_telefono=request.getParameter("numTelefono");
		String calle=request.getParameter("calle");
		String num_exterior=request.getParameter("numeroExterior");
		String colonia=request.getParameter("colonia");
		String delegacion=request.getParameter("delegacion");
		String estado=request.getParameter("estado");
		String codigo_postal=request.getParameter("CP");
		String id_empleado=Login.idEmpleado;
		System.out.print(id_empleado);
		
		//Se realiza la modificacion en la BD de los datos del empleado
		ProcesosDB DB=new ProcesosDB();
		DB.actualizaInformaciondatosPersonales(num_telefono, calle, num_exterior, colonia, delegacion, estado, codigo_postal, id_empleado);
	    //Se limpia los datos de 
		//Se recarga la ventana para poder vizualisar el cambio
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("/Index");
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
