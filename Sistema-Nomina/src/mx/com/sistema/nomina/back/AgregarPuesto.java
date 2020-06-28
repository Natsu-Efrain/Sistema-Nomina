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
 * Servlet implementation class AgregarPuesto
 */
@WebServlet("/AgregarPuesto")
public class AgregarPuesto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgregarPuesto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Se inicializa variables que se agregaran a la BD
				String nombre_area = request.getParameter("nombre_area");
				String nombre_puesto = request.getParameter("nombrePuesto");
				String salario = request.getParameter("Salario");
				String Horas = request.getParameter("Horas");
				String Id_area="";
				ProcesosDB pdb=new ProcesosDB();
				
		        List<Datos_Agregar> listaId_puesto;
				
		        listaId_puesto=pdb.consultaId_Area(nombre_area);
			
		        for (Datos_Agregar da : listaId_puesto) {
		        	Id_area=da.getId_area();
				}
				System.out.println(Id_area+nombre_puesto+salario+Horas);
			    pdb.insercionInformacionPuesto(Id_area,nombre_puesto,salario,Horas);
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
