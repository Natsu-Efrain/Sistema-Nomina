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
 * Servlet implementation class AgregarArea
 */
@WebServlet("/AgregarArea")
public class AgregarArea extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarArea() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre_area = request.getParameter("nombre_area");
		String vales_despensa = request.getParameter("vales_despensa");
		//Aqui se manda a llamar el metodo para agregar una area
		ProcesosDB pdb=new ProcesosDB();
		pdb.insercionInformacionArea(nombre_area, vales_despensa);
		//De esta forma regresamos al jsp  original y si ocurre un error mostrarlo
	    RequestDispatcher rd;
	    String cadena=ProcesosDB.MensajeError;
	    request.setAttribute("error", cadena);
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
