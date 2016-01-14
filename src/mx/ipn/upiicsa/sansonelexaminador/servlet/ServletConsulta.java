package mx.ipn.upiicsa.sansonelexaminador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.ipn.upiicsa.sansonelexaminador.dao.BeanUsuario;

import mx.ipn.upiicsa.sansonelexaminador.dao.Usuario;

/**
 * Servlet implementation class ServletConsulta
 */
@WebServlet("/ServletConsulta")
public class ServletConsulta extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ServletConsulta() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idEvento=request.getParameter("idEvento");
		BeanUsuario busuario=Usuario.consultarUsuario(idEvento);
		if(busuario!=null){
			request.setAttribute("busuario", busuario);
			request.getRequestDispatcher("mostrar.jsp").forward(request, response);
		}else{
			PrintWriter out=response.getWriter();
			out.println("Error, no se encontro el evento");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
