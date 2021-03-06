package mx.com.sistema.nomina.back;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
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
				ArrayList<String>puestos=new ArrayList<String>();
				//Obtencion de los datos del puesto en la BD
				listaPuestos=pdb.consultaPuestos();
				for (Datos_Agregar da : listaPuestos) {
					
					puestos.add(da.getNombre_puesto());

				}
				//Obtencion de las areas en la BD
				List<Datos_Agregar> listaAreas;
				ArrayList<String>areas=new ArrayList<String>();
				//Obtencion de los datos del puesto en la BD
				listaAreas=pdb.consultaAreas();
				for (Datos_Agregar da : listaAreas) {
					
					areas.add(da.getNombre_area());	
				}
				
				
				request.setAttribute("areas", areas);
				request.setAttribute("puestos", puestos);
				request.setAttribute("areas_existentes", areas);
				request.setAttribute("puestos_editar", puestos);
                request.setAttribute("opcion",pdb.opcion);
	            
				Calendar fecha = new GregorianCalendar();
				int año = fecha.get(Calendar.YEAR); 
				int mes=fecha.get(Calendar.MONTH)+1;
				int dia=fecha.get(Calendar.DAY_OF_MONTH);
				System.out.println(año+"-"+mes+"-"+dia); 
			
				
				
				
				
				
				
				
				
				
				
				
				
				request.setAttribute("fecha_ingreso",año+"-"+mes+"-"+dia);
				rd = request.getRequestDispatcher("/edicionSistema.jsp");
				rd.forward(request, response);
				pdb.opcion=null;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
