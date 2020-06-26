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
import mx.com.sistema.nomina.DB.ProcedimentoDB;



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
    static String em;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		em=email;
		
		RequestDispatcher rd;
		ProcedimentoDB pdb=new ProcedimentoDB();
		
        List<Usuario> listaUsuario;
		
		listaUsuario=pdb.consultaUsuario(email);
		if(listaUsuario.size()!=0)
		{
		for(Usuario usr:listaUsuario) {
			
			if(usr.getEmail().equals(email)&&usr.getPassword().equals(password))
			{
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
			else
			{
				rd=request.getRequestDispatcher("/LoginFallido.jsp");
				rd.forward(request, response);
			}
			}
			
		}
		
		else
		{
			rd=request.getRequestDispatcher("/LoginFallido.jsp");
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
