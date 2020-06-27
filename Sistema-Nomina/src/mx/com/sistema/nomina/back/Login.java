package mx.com.sistema.nomina.back;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import mx.com.sistema.nomina.Bin.*;
import mx.com.sistema.nomina.DB.ProcesosDB;




/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //Variables estaticas que serviran para filtros ya dentro de una vez en la pagina
    static String correo;
	static String idEmpleado;
	static String contrasena;
	static String id_puesto;
	//Controlador del JSP
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		correo=email;
		contrasena=password;
		RequestDispatcher rd;
		ProcesosDB pdb=new ProcesosDB();
		
        List<Usuario> listaUsuario;
		
		listaUsuario=pdb.consultaUsuario(email,password);
		if(listaUsuario.size()!=0)
		{
		for(Usuario usr:listaUsuario) {
				idEmpleado=usr.getId_empleado();
				id_puesto=usr.getId_puesto();
                if(Integer.parseInt(usr.getId_puesto())>=101&&Integer.parseInt(usr.getId_puesto())<=200)
                {
				rd=request.getRequestDispatcher("/menu.jsp");
				rd.forward(request, response);
                }
                else
                {
                	rd=request.getRequestDispatcher("/menuEmpleado.jsp");
    				rd.forward(request, response);
                }
			}
		}
			else
			{
				String error="Si";
	            request.setAttribute("error",error);
				rd=request.getRequestDispatcher("/index.jsp");
				rd.forward(request, response);
			}
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
