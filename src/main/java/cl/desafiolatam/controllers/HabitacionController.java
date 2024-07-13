package cl.desafiolatam.controllers;

import java.io.IOException;
import java.util.LinkedHashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.desafiolatam.model.Habitacion;
import cl.desafiolatam.model.HabitacionBusiness;

@WebServlet("/procesa")
public class HabitacionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private HabitacionBusiness business = new HabitacionBusiness();

    public HabitacionController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/procesa.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8"); // Pinche Tomcat
		int habitacionId = Integer.parseInt(request.getParameter("idhabitacion"));
		int dias = Integer.parseInt(request.getParameter("dias"));
		
		Habitacion habitacion = business.getHabitacion(habitacionId);

		// En realidad podría crear una clase solicitud y bla bla... y probablemente debería	
		LinkedHashMap<String, String> datosSolicitud = new LinkedHashMap<>();

		datosSolicitud.put("Nombre", request.getParameter("nombre"));
		datosSolicitud.put("Apellido", request.getParameter("apellido"));
		datosSolicitud.put("Email", request.getParameter("email"));
		datosSolicitud.put("Medio Pago", request.getParameter("medio_pago"));
		if(dias == 1) {
			datosSolicitud.put("Días", dias + " día");
		} else {
			datosSolicitud.put("Días", dias + " días");
		}
		
		datosSolicitud.put("Fecha Entrada", request.getParameter("fecha_entrada"));
		datosSolicitud.put("Valor Pagar", "$" + Integer.toString(dias * habitacion.getPrecio()));
		
		
		request.setAttribute("datos", datosSolicitud);
		request.setAttribute("habitacionName", habitacion.getNombre());
		
		doGet(request, response);
	}

}
