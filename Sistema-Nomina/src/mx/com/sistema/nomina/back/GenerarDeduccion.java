package mx.com.sistema.nomina.back;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.com.sistema.nomina.DB.ProcesosDB;

/**
 * Servlet implementation class GenerarDeduccion
 */
@WebServlet("/GenerarDeduccion")
public class GenerarDeduccion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GenerarDeduccion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Se agregan las variables de los datos a generar nomina
				String id_empleado=request.getParameter("idEmpleado");
				String faltas=request.getParameter("faltas");
				String retardos=request.getParameter("retardos");
				String horas=request.getParameter("horas");
                ProcesosDB pdb=new ProcesosDB();
                pdb.generar(id_empleado, faltas, retardos, horas);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
