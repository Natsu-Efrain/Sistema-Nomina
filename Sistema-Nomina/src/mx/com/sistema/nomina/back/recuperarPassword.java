package mx.com.sistema.nomina.back;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.com.sistema.nomina.Bin.Correo;
import mx.com.sistema.nomina.Bin.Usuario;
import mx.com.sistema.nomina.DB.ProcedimentoDB;

/**
 * Servlet implementation class recuperarPassword
 */
@WebServlet("/recuperarPassword")
public class recuperarPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public recuperarPassword() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String para = request.getParameter("email");
		String de = "natsusalamander8888@gmail.com";
		String clave = "EFRAINdark_9";
		String mensaje="";
		String asunto = "Recuperacion de contraseña";
		RequestDispatcher rd;
		ProcedimentoDB pdb=new ProcedimentoDB();
		List<Usuario> listaUsuario;
		Correo cr=new Correo();
		
		
		listaUsuario = pdb.consultaUsuario(para);

		if(listaUsuario.size()!=0)
		{
		for (Usuario usr : listaUsuario) {
				System.out.print("Existe");
				mensaje="Tu contraseña es : "+usr.getPassword();
				System.out.print(usr.getPassword());
				cr.enviarCorreo(de, clave, para, mensaje, asunto);
				rd = request.getRequestDispatcher("/recuperacionPasswordExictosa.jsp");
				rd.forward(request, response);
				
		}
		}
		else
		{
			System.out.print("No existe");
			rd = request.getRequestDispatcher("/recuperacionPasswordFallida.jsp");
			rd.forward(request, response);
		}
		
		}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
