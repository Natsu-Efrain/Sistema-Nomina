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
import mx.com.sistema.nomina.Bin.Usuario;
import mx.com.sistema.nomina.DB.ProcesosDB;

/**
 * Servlet implementation class edicionSistema
 */
@WebServlet("/edicionSistema")
public class edicionSistema extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public edicionSistema() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Se inicializa variables
				ProcesosDB pdb=new ProcesosDB();
				RequestDispatcher rd;
				List<Datos_Agregar> listaPuestos;
				//Obtencion de los datos del usuario en la BD
				listaPuestos=pdb.consultaPuestos();
				for (Datos_Agregar da : listaPuestos) {
					
					request.setAttribute("puestos", da.getNombre_puesto());

				}
				
				rd = request.getRequestDispatcher("/edicionSistema.jsp");
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
